import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:wayat/app_state/location_state/share_mode.dart';
import 'package:wayat/services/location/no_location_service_exception.dart';
import 'package:wayat/services/location/rejected_location_exception.dart';
import 'package:wayat/services/location/share_location_service.dart';
import 'dart:math' show cos, sqrt, asin;
import 'package:wayat/services/google_maps_service/google_maps_service.dart';

/// This service will share the user's location with the BackEnd
/// when the conditions are met
class ShareLocationServiceImpl extends ShareLocationService {
  final Duration passiveMinTime = const Duration(minutes: 15);

  /// 1 kilometer of distance
  final int passiveMinDistance = 1000;
  final Duration activeMinTime = const Duration();

  /// 50 meters of distance
  final int activeMinDistance = 50;

  late Location location;
  late PermissionStatus locationPermissions;
  late LocationData currentLocation;
  late ShareLocationMode shareLocationMode;
  late DateTime lastShared;
  late bool shareLocationEnabled;
  late Function(LatLng) changeLocationStateCallback;

  /// Creates a ShareLocationService.
  ///
  /// Throw a [RejectedLocationException] if the user
  /// rejects location permissions. Throws a [NoLocationServiceException]
  /// if the call to ```Location.requestService()``` results in an error
  static Future<ShareLocationServiceImpl> create(ShareLocationMode mode,
      bool shareLocation, Function(LatLng) onLocationChangedCallback) async {
    Location location = Location();

    // First, enable device location
    bool locationServiceEnabled = await location.serviceEnabled();
    if (!locationServiceEnabled) {
      locationServiceEnabled = await location.requestService();
      if (!locationServiceEnabled) {
        throw NoLocationServiceException();
      }
    }

    // Then, enable app location permission
    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted == PermissionStatus.denied) {
        throw RejectedLocationException();
      }
    }

    LocationData initialLocation = await location.getLocation();

    return ShareLocationServiceImpl._create(
        initialLocation, mode, shareLocation, onLocationChangedCallback);
  }

  /// Private factory for the location service
  ///
  /// It needs to be divided in private and public static factory to be able to
  /// make the necessary async calls in the public version
  ShareLocationServiceImpl._create(
      LocationData initialLocation,
      ShareLocationMode mode,
      bool shareLocation,
      Function(LatLng) onLocationChangedCallback)
      : super.create() {
    location = Location.instance;
    shareLocationMode = mode;
    lastShared = DateTime.now();
    currentLocation = initialLocation;
    shareLocationEnabled = shareLocation;
    changeLocationStateCallback = onLocationChangedCallback;

    sendLocationToBack(initialLocation);

    location.enableBackgroundMode(enable: true);

    location.onLocationChanged.listen((LocationData newLocation) {
      if (shareLocationEnabled) {
        manageLocationChange(newLocation);
      }
    });
  }

  /// Checks all the conditions to send location to backend,
  /// including active and passive mode
  void manageLocationChange(LocationData newLocation) {
    double movedDistance = calculateDistance(newLocation);
    // Passive mode
    if (shareLocationMode == ShareLocationMode.passive) {
      DateTime now = DateTime.now();
      if (lastShared.difference(now).abs() < passiveMinTime &&
          movedDistance < passiveMinDistance) {
        return;
      }
    }
    // Active mode
    else if (movedDistance < activeMinDistance) {
      return;
    }

    lastShared = DateTime.now();
    currentLocation = newLocation;
    sendLocationToBack(newLocation);
  }

  @override
  Future<void> sendLocationToBack(LocationData locationData) async {
    LatLng location = LatLng(locationData.latitude!, locationData.longitude!);
    changeLocationStateCallback(location);
    String address =
        await GoogleMapsService.getAddressFromCoordinates(location);
    await super.sendPostRequest("/map/update-location", {
      "position": {
        "longitude": locationData.longitude,
        "latitude": locationData.latitude,
      },
      "address": address
    });
  }

  @override
  LocationData getCurrentLocation() {
    return currentLocation;
  }

  @override
  void setShareLocationMode(ShareLocationMode shareLocationMode) {
    if (shareLocationMode == ShareLocationMode.active) {
      sendForcedLocationUpdate();
    }
    this.shareLocationMode = shareLocationMode;
  }

  /// Sends the current location to back without needing the conditions
  Future sendForcedLocationUpdate() async {
    currentLocation = await location.getLocation();
    sendLocationToBack(currentLocation);
  }

  @override
  void setShareLocationEnabled(bool shareLocation) {
    shareLocationEnabled = shareLocation;
    if (shareLocation) {
      shareLocationActivated();
    } else {
      super.sendPostRequest(
          'users/preferences', {"share_location": shareLocation});
    }
  }

  /// This method is necessary because we need to make sure that the POST to true
  /// is received BEFORE the location update. Otherwise it would be ignored
  Future shareLocationActivated() async {
    await super.sendPostRequest('users/preferences', {"share_location": true});
    sendForcedLocationUpdate();
  }

  /// Distance will returned in ```meters```
  double calculateDistance(LocationData newLocation) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((newLocation.latitude! - currentLocation.latitude!) * p) / 2 +
        c(newLocation.latitude! * p) *
            c(currentLocation.latitude! * p) *
            (1 - c((newLocation.longitude! - currentLocation.longitude!) * p)) /
            2;
    return 12742 * asin(sqrt(a)) * 1000;
  }
}
