import 'package:mobx/mobx.dart';
import 'package:wayat/app_state/location_state/receive_location/receive_location_state.dart';
import 'package:wayat/app_state/location_state/share_location/share_location_state.dart';
import 'package:wayat/domain/location/contact_location.dart';
import 'package:wayat/services/location_listener/location_listener_service.dart';

part 'location_listener.g.dart';

// ignore: library_private_types_in_public_api
class LocationListener = _LocationListener with _$LocationListener;

/// Manages the location status of the User.
///
/// The user status is defined by the contacts sharing location with them and
/// the location mode (active or passive).
abstract class _LocationListener with Store {
  /// Service that will handle all the communication with the server.
  /// regarding the user status
  final LocationListenerService locationListenerService;

  /// Manages the share location functionality
  final ShareLocationState shareLocationState;

  /// Manages the received locations
  final ReceiveLocationState receiveLocationState;

  /// Callback that will be triggered when the contacts sharing location with
  /// us change in any way.
  late Function(List<ContactLocation>) onContactsRefUpdateCallback =
      (contacts) => receiveLocationState.setContactList(contacts);

  /// Callback that will be triggered when the server determines that we should
  /// change the location update frecuency.
  late Function(bool) onLocationModeUpdateCallback =
      (locationMode) => shareLocationState.setActiveShareMode(locationMode);

  /// Builds a [LocationListener].
  ///
  /// The optional [LocationListenerService] argument is used for testing purposes.
  _LocationListener(
      {LocationListenerService? locationListenerService,
      ReceiveLocationState? receiveLocationState,
      ShareLocationState? shareLocationState})
      : locationListenerService =
            locationListenerService ?? LocationListenerService(),
        receiveLocationState = receiveLocationState ?? ReceiveLocationState(),
        shareLocationState = shareLocationState ?? ShareLocationState();

  /// Initializes the [locationListenerService] listener for changes in the status.
  ///
  /// Calls `onContactsRefsUpdateCallback` when the contacts sharing with us change.
  ///
  /// Calls `onLocationModeUpdateCallback` when our location mode should be changed.
  Future initialize() async {
    await locationListenerService.setUpListener(
        onContactsRefUpdate: onContactsRefUpdateCallback,
        onLocationModeUpdate: onLocationModeUpdateCallback);
  }

  /// Closes the listener in [locationListenerService].
  ///
  /// This is done to avoid having a listener connection error after doing
  /// a signOut from Firebase.
  void closeListener() {
    locationListenerService.cancelListenerSubscription();
  }
}
