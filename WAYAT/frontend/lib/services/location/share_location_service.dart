import 'package:location/location.dart';
import 'package:wayat/app_state/location_state/share_mode.dart';
import 'package:wayat/services/request/rest_service.dart';

abstract class ShareLocationService extends RESTService {
  ShareLocationService.create();

  void sendLocationToBack(LocationData locationData);

  LocationData getCurrentLocation();

  void setShareLocationMode(ShareLocationMode shareLocationMode);

  void setShareLocationEnabled(bool shareLocation);
}
