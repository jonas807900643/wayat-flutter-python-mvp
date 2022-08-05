import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:mobx/mobx.dart';
import 'package:wayat/app_state/location_state/share_mode.dart';
import 'package:wayat/services/location/share_location_service.dart';
import 'package:wayat/services/location/share_location_service_impl.dart';

part 'location_state.g.dart';

class LocationState = _LocationState with _$LocationState;

abstract class _LocationState with Store {
  late ShareLocationService shareLocationService;

  @observable
  LatLng currentLocation = const LatLng(0, 0);
  @observable
  ShareLocationMode locationMode = ShareLocationMode.Passive;

  Future initialize() async {
    debugPrint("Initializing from state");
    shareLocationService = await ShareLocationServiceImpl.create(locationMode);
    debugPrint("Service created");
    LocationData currentLocationData =
        shareLocationService.getCurrentLocation();
    currentLocation =
        LatLng(currentLocationData.latitude!, currentLocationData.longitude!);
    debugPrint("Current location in state $currentLocation");
  }

  void setLocationMode(ShareLocationMode newMode) {
    locationMode = newMode;
    shareLocationService.setShareLocationMode(newMode);
  }
}
