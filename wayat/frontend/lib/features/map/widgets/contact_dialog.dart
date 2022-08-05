import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wayat/common/widgets/buttons/filled_button.dart';
import 'package:wayat/domain/location/contact_location.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:wayat/services/google_maps_service/google_maps_service.dart';

class ContactDialog extends StatelessWidget {
  final ContactLocation contact;
  final BitmapDescriptor icon;
  const ContactDialog({required this.contact, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(color: Colors.black, width: 1)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.black, width: 1))),
                    child: GoogleMap(
                      zoomControlsEnabled: false,
                      zoomGesturesEnabled: false,
                      rotateGesturesEnabled: false,
                      scrollGesturesEnabled: false,
                      tiltGesturesEnabled: false,
                      initialCameraPosition: CameraPosition(
                          target: LatLng(contact.latitude, contact.longitude),
                          zoom: 16),
                      markers: {
                        Marker(
                            markerId: MarkerId(contact.displayName),
                            position:
                                LatLng(contact.latitude, contact.longitude),
                            icon: icon)
                      },
                    ),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.topEnd,
                  padding: const EdgeInsets.all(15),
                  child: Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 1),
                          shape: BoxShape.circle),
                      child: InkWell(
                        onTap: () => {AutoRouter.of(context).pop()},
                        borderRadius: BorderRadius.circular(1000),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(Icons.close),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          radius: (22),
                          backgroundColor: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(contact.imageUrl),
                            ),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contact.displayName,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          //TODO: UPDATE THIS TEXTFIELD WHEN THE SERVICE TO CONVERT COORDINATES TO ADDRESS IS MERGED
                          Text(
                            contact.email,
                            style: const TextStyle(
                                fontSize: 17, color: Colors.black54),
                          ),
                          Text(
                            timeago.format(contact.lastUpdated),
                            style: const TextStyle(
                                fontSize: 17, color: Colors.black54),
                          )
                        ],
                      ),
                      Material(
                        type: MaterialType.transparency,
                        child: Ink(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              shape: BoxShape.circle),
                          child: InkWell(
                            onTap: () => GoogleMapsService.openMaps(
                                contact.latitude, contact.longitude),
                            borderRadius: BorderRadius.circular(1000),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Icon(Icons.directions_outlined),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  CustomFilledButton(
                      text: "View profile", onPressed: () {}, enabled: true),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () => AutoRouter.of(context).pop(),
                      child: const Text(
                        "Close",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
