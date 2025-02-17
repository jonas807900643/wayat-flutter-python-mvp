import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wayat/navigation/home_nav_state/home_nav_state.dart';
import 'package:wayat/app_state/location_state/receive_location/receive_location_state.dart';
import 'package:wayat/app_state/location_state/location_listener.dart';
import 'package:wayat/common/widgets/buttons/circle_icon_button.dart';
import 'package:wayat/domain/contact/contact.dart';
import 'package:wayat/domain/location/contact_location.dart';
import 'package:wayat/features/contact_profile/controller/contact_profile_controller.dart';
import 'package:wayat/features/contact_profile/page/contact_profile_page.dart';
import 'package:wayat/lang/app_localizations.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:wayat/services/common/http_provider/http_provider.dart';
import 'package:wayat/common/widgets/switch.dart';

import '../../test_common/test_app.dart';
import 'contact_profile_test.mocks.dart';

@GenerateMocks([
  LocationListener,
  ContactProfileController,
  HomeNavState,
  HttpProvider,
  ReceiveLocationState,
])
void main() async {
  // Constants for the test contacts creation
  const String contactName = "Contact Name";
  const String contactAddress = "Address Street 21";
  DateTime lastUpdated = DateTime(2000, 12, 21);

  late LocationListener mockLocationListener;
  late ReceiveLocationState mockReceiveLocationState;
  late HomeNavState mockHomeState;
  late ContactProfileController mockContactProfileController;
  late HttpProvider mockHttpProvider;

  late Contact nonLocatedContact;
  late ContactLocation locatedContact;

  ContactLocation locatedContactFactory() {
    return ContactLocation(
        shareLocationTo: true,
        id: "id1",
        name: contactName,
        email: "Contact email",
        imageUrl: "https://example.com/image",
        phone: "123",
        latitude: 1,
        longitude: 1,
        address: contactAddress,
        lastUpdated: lastUpdated);
  }

  Contact nonLocatedContactFactory() {
    return Contact(
        shareLocationTo: true,
        id: "id2",
        name: contactName,
        email: "Contact email",
        imageUrl: "https://example.com/image",
        phone: "123");
  }

  setUpAll(() {
    dotenv.load();
    mockLocationListener = MockLocationListener();
    mockReceiveLocationState = MockReceiveLocationState();
    mockHomeState = MockHomeNavState();
    mockHttpProvider = MockHttpProvider();

    GetIt.I.registerSingleton<LocationListener>(mockLocationListener);
    GetIt.I.registerSingleton<HomeNavState>(mockHomeState);
    GetIt.I.registerSingleton<HttpProvider>(mockHttpProvider);

    nonLocatedContact = nonLocatedContactFactory();
    locatedContact = locatedContactFactory();
    mockContactProfileController = MockContactProfileController();

    HttpOverrides.global = null;

    when(mockLocationListener.receiveLocationState)
        .thenReturn(mockReceiveLocationState);
    when(mockReceiveLocationState.contacts).thenReturn([locatedContact]);
    when(mockContactProfileController.shareLocationToContact).thenReturn(true);
  });

  group("Contact Profile has a correct app bar", () {
    testWidgets("There is a back arrow button", (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      expect(find.widgetWithIcon(IconButton, Icons.arrow_back), findsOneWidget);
    });

    testWidgets("Exits the page correctly", (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      await tester.tap(find.widgetWithIcon(IconButton, Icons.arrow_back));
      verify(mockHomeState.setSelectedContact(null)).called(1);
    });
  });

  group("The map section is displayed correctly", () {
    testWidgets("The map does not appear when the contact cannot be located",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      await tester.pump();

      expect(find.byType(Image), findsNothing);
    });

    testWidgets("There is a message indicating that location is not available",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      await tester.pump();

      expect(find.text(appLocalizations.contactProfileLocationNotAvailable),
          findsOneWidget);
    });

    testWidgets("The map appears when the contact can be located",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: locatedContact,
              navigationSource: "Contacts",
              controller: mockContactProfileController)));
      await tester.pumpAndSettle();

      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets("There is no message when the map is loaded", (tester) async {
      when(mockContactProfileController.getMarkerImage(locatedContact))
          .thenAnswer(
              (realInvocation) => Future.value(BitmapDescriptor.defaultMarker));

      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: locatedContact,
              navigationSource: "Contacts",
              controller: mockContactProfileController)));
      await tester.pump();

      expect(find.text(appLocalizations.contactProfileLocationNotAvailable),
          findsNothing);
    });
  });

  group("The contact info section displays correctly", () {
    testWidgets("The contact name displays correctly with non located contact",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      expect(find.text(nonLocatedContact.name), findsOneWidget);
    });

    testWidgets("The contact name displays correctly with located contact",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      expect(find.text(locatedContact.name), findsOneWidget);
    });

    testWidgets("Address appears with located contact", (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: locatedContact, navigationSource: "Contacts")));
      expect(find.text(locatedContact.address), findsOneWidget);
    });

    testWidgets("Last update appears correctly with located contact",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: locatedContact, navigationSource: "Contacts")));
      expect(
          find.text(
              "${appLocalizations.contactProfileLastUpdated} ${timeago.format(locatedContact.lastUpdated, locale: Localizations.localeOf(TestApp.context).languageCode)}"),
          findsOneWidget);
    });

    testWidgets(
        "Sharing location with you message appears when contact is located",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: locatedContact, navigationSource: "Contacts")));
      expect(find.text(appLocalizations.contactProfileSharingLocationWithYou),
          findsOneWidget);
    });

    testWidgets(
        "Sharing location with you message does not appear when contact is not located",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      expect(find.text(appLocalizations.contactProfileSharingLocationWithYou),
          findsNothing);
    });

    testWidgets("Profile picture with border appears with located contact",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: locatedContact, navigationSource: "Contacts")));
      expect(find.byType(CircleAvatar), findsWidgets);
    });
    testWidgets("Profile picture with border appears with non located contact",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      await tester.pump();
      expect(find.byType(CircleAvatar), findsWidgets);
    });

    testWidgets("Routing button appears with located contact", (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: locatedContact, navigationSource: "Contacts")));
      expect(find.widgetWithIcon(CircleIconButton, Icons.directions_outlined),
          findsOneWidget);
    });
    testWidgets("Routing button does not appear with non located contact",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      expect(find.widgetWithIcon(CircleIconButton, Icons.directions_outlined),
          findsNothing);
    });

    testWidgets(
        "Google Maps service is called when pressing the Routing button",
        (tester) async {
      when(mockContactProfileController.openMaps(locatedContact))
          .thenReturn(null);
      when(mockContactProfileController.getMarkerImage(locatedContact))
          .thenAnswer(
              (realInvocation) => Future.value(BitmapDescriptor.defaultMarker));

      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
        contact: locatedContact,
        navigationSource: "Contacts",
        controller: mockContactProfileController,
      )));
      await tester.pump();
      await tester.tap(find.byType(CircleIconButton));
      verify(mockContactProfileController.openMaps(locatedContact)).called(1);
    });
  });

  group("Share location to contacts switch works correctly", () {
    testWidgets("The \"share my location\" text and switch displays correctly",
        (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      expect(find.text(appLocalizations.shareMyLocation), findsOneWidget);
      expect(find.byType(CustomSwitch), findsOneWidget);
    });

    testWidgets("Share my location to contact switch ", (tester) async {
      await tester.pumpWidget(TestApp.createApp(
          body: ContactProfilePage(
              contact: nonLocatedContact, navigationSource: "Contacts")));
      expect(find.text(appLocalizations.shareMyLocation), findsOneWidget);
    });
  });
}
