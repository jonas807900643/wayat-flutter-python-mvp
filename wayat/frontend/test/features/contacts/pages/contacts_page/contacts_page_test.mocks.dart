// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/features/contacts/pages/contacts_page/contacts_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i18;

import 'package:flutter/cupertino.dart' as _i5;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i10;
import 'package:image_picker/image_picker.dart' as _i26;
import 'package:mobx/mobx.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/app_state/home_state/home_state.dart' as _i19;
import 'package:wayat/app_state/location_state/location_state.dart' as _i21;
import 'package:wayat/app_state/location_state/share_mode.dart' as _i23;
import 'package:wayat/app_state/map_state/map_state.dart' as _i27;
import 'package:wayat/app_state/profile_state/profile_state.dart' as _i24;
import 'package:wayat/app_state/user_session/session_state.dart' as _i16;
import 'package:wayat/app_state/user_status/user_status_state.dart' as _i9;
import 'package:wayat/domain/contact/contact.dart' as _i20;
import 'package:wayat/domain/location/contact_location.dart' as _i22;
import 'package:wayat/domain/user/my_user.dart' as _i17;
import 'package:wayat/features/contacts/controller/contacts_page_controller.dart'
    as _i15;
import 'package:wayat/features/contacts/controller/friends_controller/friends_controller.dart'
    as _i3;
import 'package:wayat/features/contacts/controller/requests_controller/requests_controller.dart'
    as _i2;
import 'package:wayat/features/contacts/controller/suggestions_controller/suggestions_controller.dart'
    as _i4;
import 'package:wayat/features/profile/controllers/profile_current_pages.dart'
    as _i25;
import 'package:wayat/services/authentication/auth_service.dart' as _i7;
import 'package:wayat/services/contact/contact_service.dart' as _i14;
import 'package:wayat/services/location/share_location_service.dart' as _i8;
import 'package:wayat/services/location/share_location_service_factory.dart'
    as _i11;
import 'package:wayat/services/status/map_status_service.dart' as _i13;
import 'package:wayat/services/status/user_status_service_impl.dart' as _i12;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRequestsController_0 extends _i1.SmartFake
    implements _i2.RequestsController {
  _FakeRequestsController_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeFriendsController_1 extends _i1.SmartFake
    implements _i3.FriendsController {
  _FakeFriendsController_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeSuggestionsController_2 extends _i1.SmartFake
    implements _i4.SuggestionsController {
  _FakeSuggestionsController_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeDateTime_3 extends _i1.SmartFake implements DateTime {
  _FakeDateTime_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeDuration_4 extends _i1.SmartFake implements Duration {
  _FakeDuration_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeTextEditingController_5 extends _i1.SmartFake
    implements _i5.TextEditingController {
  _FakeTextEditingController_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_6 extends _i1.SmartFake
    implements _i6.ReactiveContext {
  _FakeReactiveContext_6(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeAuthService_7 extends _i1.SmartFake implements _i7.AuthService {
  _FakeAuthService_7(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeShareLocationService_8 extends _i1.SmartFake
    implements _i8.ShareLocationService {
  _FakeShareLocationService_8(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeUserStatusState_9 extends _i1.SmartFake
    implements _i9.UserStatusState {
  _FakeUserStatusState_9(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLatLng_10 extends _i1.SmartFake implements _i10.LatLng {
  _FakeLatLng_10(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeShareLocationServiceFactory_11 extends _i1.SmartFake
    implements _i11.ShareLocationServiceFactory {
  _FakeShareLocationServiceFactory_11(
      Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeUserStatusService_12 extends _i1.SmartFake
    implements _i12.UserStatusService {
  _FakeUserStatusService_12(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeMapStatusService_13 extends _i1.SmartFake
    implements _i13.MapStatusService {
  _FakeMapStatusService_13(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeObservableList_14<T> extends _i1.SmartFake
    implements _i6.ObservableList<T> {
  _FakeObservableList_14(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeContactService_15 extends _i1.SmartFake
    implements _i14.ContactService {
  _FakeContactService_15(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [ContactsPageController].
///
/// See the documentation for Mockito's code generation for more information.
class MockContactsPageController extends _i1.Mock
    implements _i15.ContactsPageController {
  MockContactsPageController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.RequestsController get requestsController =>
      (super.noSuchMethod(Invocation.getter(#requestsController),
              returnValue: _FakeRequestsController_0(
                  this, Invocation.getter(#requestsController)))
          as _i2.RequestsController);
  @override
  set requestsController(_i2.RequestsController? _requestsController) => super
      .noSuchMethod(Invocation.setter(#requestsController, _requestsController),
          returnValueForMissingStub: null);
  @override
  _i3.FriendsController get friendsController =>
      (super.noSuchMethod(Invocation.getter(#friendsController),
              returnValue: _FakeFriendsController_1(
                  this, Invocation.getter(#friendsController)))
          as _i3.FriendsController);
  @override
  set friendsController(_i3.FriendsController? _friendsController) => super
      .noSuchMethod(Invocation.setter(#friendsController, _friendsController),
          returnValueForMissingStub: null);
  @override
  _i4.SuggestionsController get suggestionsController =>
      (super.noSuchMethod(Invocation.getter(#suggestionsController),
              returnValue: _FakeSuggestionsController_2(
                  this, Invocation.getter(#suggestionsController)))
          as _i4.SuggestionsController);
  @override
  set suggestionsController(
          _i4.SuggestionsController? _suggestionsController) =>
      super.noSuchMethod(
          Invocation.setter(#suggestionsController, _suggestionsController),
          returnValueForMissingStub: null);
  @override
  DateTime get timeFriendsUpdate =>
      (super.noSuchMethod(Invocation.getter(#timeFriendsUpdate),
              returnValue:
                  _FakeDateTime_3(this, Invocation.getter(#timeFriendsUpdate)))
          as DateTime);
  @override
  set timeFriendsUpdate(DateTime? _timeFriendsUpdate) => super.noSuchMethod(
      Invocation.setter(#timeFriendsUpdate, _timeFriendsUpdate),
      returnValueForMissingStub: null);
  @override
  DateTime get timeRequestsUpdate =>
      (super.noSuchMethod(Invocation.getter(#timeRequestsUpdate),
              returnValue:
                  _FakeDateTime_3(this, Invocation.getter(#timeRequestsUpdate)))
          as DateTime);
  @override
  set timeRequestsUpdate(DateTime? _timeRequestsUpdate) => super.noSuchMethod(
      Invocation.setter(#timeRequestsUpdate, _timeRequestsUpdate),
      returnValueForMissingStub: null);
  @override
  DateTime get timeSuggestionsUpdate => (super.noSuchMethod(
          Invocation.getter(#timeSuggestionsUpdate),
          returnValue:
              _FakeDateTime_3(this, Invocation.getter(#timeSuggestionsUpdate)))
      as DateTime);
  @override
  set timeSuggestionsUpdate(DateTime? _timeSuggestionsUpdate) =>
      super.noSuchMethod(
          Invocation.setter(#timeSuggestionsUpdate, _timeSuggestionsUpdate),
          returnValueForMissingStub: null);
  @override
  Duration get maxTimeBetweenUpdates => (super.noSuchMethod(
          Invocation.getter(#maxTimeBetweenUpdates),
          returnValue:
              _FakeDuration_4(this, Invocation.getter(#maxTimeBetweenUpdates)))
      as Duration);
  @override
  set maxTimeBetweenUpdates(Duration? _maxTimeBetweenUpdates) =>
      super.noSuchMethod(
          Invocation.setter(#maxTimeBetweenUpdates, _maxTimeBetweenUpdates),
          returnValueForMissingStub: null);
  @override
  _i5.TextEditingController get searchBarController =>
      (super.noSuchMethod(Invocation.getter(#searchBarController),
              returnValue: _FakeTextEditingController_5(
                  this, Invocation.getter(#searchBarController)))
          as _i5.TextEditingController);
  @override
  set searchBarController(_i5.TextEditingController? _searchBarController) =>
      super.noSuchMethod(
          Invocation.setter(#searchBarController, _searchBarController),
          returnValueForMissingStub: null);
  @override
  bool get viewSentRequests =>
      (super.noSuchMethod(Invocation.getter(#viewSentRequests),
          returnValue: false) as bool);
  @override
  set viewSentRequests(bool? value) =>
      super.noSuchMethod(Invocation.setter(#viewSentRequests, value),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  void setviewSentRequests(bool? view) =>
      super.noSuchMethod(Invocation.method(#setviewSentRequests, [view]),
          returnValueForMissingStub: null);
  @override
  void setSearchBarText(String? text) =>
      super.noSuchMethod(Invocation.method(#setSearchBarText, [text]),
          returnValueForMissingStub: null);
  @override
  void updateTabData(int? index) =>
      super.noSuchMethod(Invocation.method(#updateTabData, [index]),
          returnValueForMissingStub: null);
}

/// A class which mocks [SessionState].
///
/// See the documentation for Mockito's code generation for more information.
class MockSessionState extends _i1.Mock implements _i16.SessionState {
  MockSessionState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get finishLoggedIn => (super
          .noSuchMethod(Invocation.getter(#finishLoggedIn), returnValue: false)
      as bool);
  @override
  set finishLoggedIn(bool? value) =>
      super.noSuchMethod(Invocation.setter(#finishLoggedIn, value),
          returnValueForMissingStub: null);
  @override
  bool get googleSignedIn => (super
          .noSuchMethod(Invocation.getter(#googleSignedIn), returnValue: false)
      as bool);
  @override
  set googleSignedIn(bool? value) =>
      super.noSuchMethod(Invocation.setter(#googleSignedIn, value),
          returnValueForMissingStub: null);
  @override
  bool get hasDoneOnboarding =>
      (super.noSuchMethod(Invocation.getter(#hasDoneOnboarding),
          returnValue: false) as bool);
  @override
  set hasDoneOnboarding(bool? value) =>
      super.noSuchMethod(Invocation.setter(#hasDoneOnboarding, value),
          returnValueForMissingStub: null);
  @override
  set currentUser(_i17.MyUser? value) =>
      super.noSuchMethod(Invocation.setter(#currentUser, value),
          returnValueForMissingStub: null);
  @override
  _i7.AuthService get authService =>
      (super.noSuchMethod(Invocation.getter(#authService),
              returnValue:
                  _FakeAuthService_7(this, Invocation.getter(#authService)))
          as _i7.AuthService);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i18.Future<void> doneOnBoarding() =>
      (super.noSuchMethod(Invocation.method(#doneOnBoarding, []),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  _i18.Future<dynamic> isLogged() =>
      (super.noSuchMethod(Invocation.method(#isLogged, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  void setGoogleSignIn(bool? signedIn) =>
      super.noSuchMethod(Invocation.method(#setGoogleSignIn, [signedIn]),
          returnValueForMissingStub: null);
  @override
  void setFinishLoggedIn(bool? finishedLoggedIn) => super.noSuchMethod(
      Invocation.method(#setFinishLoggedIn, [finishedLoggedIn]),
      returnValueForMissingStub: null);
  @override
  _i18.Future<dynamic> initializeUser() =>
      (super.noSuchMethod(Invocation.method(#initializeUser, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  _i18.Future<dynamic> updateCurrentUser() =>
      (super.noSuchMethod(Invocation.method(#updateCurrentUser, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  _i18.Future<bool> updatePhone(String? phone) =>
      (super.noSuchMethod(Invocation.method(#updatePhone, [phone]),
          returnValue: _i18.Future<bool>.value(false)) as _i18.Future<bool>);
  @override
  _i18.Future<bool> updateOnboarding() =>
      (super.noSuchMethod(Invocation.method(#updateOnboarding, []),
          returnValue: _i18.Future<bool>.value(false)) as _i18.Future<bool>);
  @override
  _i18.Future<dynamic> doLoginProcess() =>
      (super.noSuchMethod(Invocation.method(#doLoginProcess, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  _i18.Future<dynamic> initializeUserSession() =>
      (super.noSuchMethod(Invocation.method(#initializeUserSession, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  _i18.Future<void> login() =>
      (super.noSuchMethod(Invocation.method(#login, []),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  _i18.Future<dynamic> logOut() =>
      (super.noSuchMethod(Invocation.method(#logOut, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  bool isOnboardingCompleted() =>
      (super.noSuchMethod(Invocation.method(#isOnboardingCompleted, []),
          returnValue: false) as bool);
  @override
  bool hasPhone() =>
      (super.noSuchMethod(Invocation.method(#hasPhone, []), returnValue: false)
          as bool);
}

/// A class which mocks [HomeState].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeState extends _i1.Mock implements _i19.HomeState {
  MockHomeState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set selectedContact(_i20.Contact? value) =>
      super.noSuchMethod(Invocation.setter(#selectedContact, value),
          returnValueForMissingStub: null);
  @override
  String get navigationSourceContactProfile =>
      (super.noSuchMethod(Invocation.getter(#navigationSourceContactProfile),
          returnValue: '') as String);
  @override
  set navigationSourceContactProfile(String? _navigationSourceContactProfile) =>
      super.noSuchMethod(
          Invocation.setter(
              #navigationSourceContactProfile, _navigationSourceContactProfile),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  void setSelectedContact(_i20.Contact? newContact, String? navigationSource) =>
      super.noSuchMethod(
          Invocation.method(
              #setSelectedContact, [newContact, navigationSource]),
          returnValueForMissingStub: null);
}

/// A class which mocks [LocationState].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationState extends _i1.Mock implements _i21.LocationState {
  MockLocationState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.ShareLocationService get shareLocationService =>
      (super.noSuchMethod(Invocation.getter(#shareLocationService),
              returnValue: _FakeShareLocationService_8(
                  this, Invocation.getter(#shareLocationService)))
          as _i8.ShareLocationService);
  @override
  set shareLocationService(_i8.ShareLocationService? _shareLocationService) =>
      super.noSuchMethod(
          Invocation.setter(#shareLocationService, _shareLocationService),
          returnValueForMissingStub: null);
  @override
  _i9.UserStatusState get userStatusState => (super.noSuchMethod(
          Invocation.getter(#userStatusState),
          returnValue:
              _FakeUserStatusState_9(this, Invocation.getter(#userStatusState)))
      as _i9.UserStatusState);
  @override
  set userStatusState(_i9.UserStatusState? _userStatusState) =>
      super.noSuchMethod(Invocation.setter(#userStatusState, _userStatusState),
          returnValueForMissingStub: null);
  @override
  _i10.LatLng get currentLocation =>
      (super.noSuchMethod(Invocation.getter(#currentLocation),
              returnValue:
                  _FakeLatLng_10(this, Invocation.getter(#currentLocation)))
          as _i10.LatLng);
  @override
  set currentLocation(_i10.LatLng? value) =>
      super.noSuchMethod(Invocation.setter(#currentLocation, value),
          returnValueForMissingStub: null);
  @override
  bool get shareLocationEnabled =>
      (super.noSuchMethod(Invocation.getter(#shareLocationEnabled),
          returnValue: false) as bool);
  @override
  set shareLocationEnabled(bool? value) =>
      super.noSuchMethod(Invocation.setter(#shareLocationEnabled, value),
          returnValueForMissingStub: null);
  @override
  _i11.ShareLocationServiceFactory get shareLocationServiceFactory =>
      (super.noSuchMethod(Invocation.getter(#shareLocationServiceFactory),
              returnValue: _FakeShareLocationServiceFactory_11(
                  this, Invocation.getter(#shareLocationServiceFactory)))
          as _i11.ShareLocationServiceFactory);
  @override
  dynamic Function(_i10.LatLng) get onLocationChanged =>
      (super.noSuchMethod(Invocation.getter(#onLocationChanged),
              returnValue: (_i10.LatLng __p0) => null)
          as dynamic Function(_i10.LatLng));
  @override
  set onLocationChanged(dynamic Function(_i10.LatLng)? _onLocationChanged) =>
      super.noSuchMethod(
          Invocation.setter(#onLocationChanged, _onLocationChanged),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i18.Future<dynamic> initialize() =>
      (super.noSuchMethod(Invocation.method(#initialize, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  void setShareLocationEnabled(bool? shareLocation) => super.noSuchMethod(
      Invocation.method(#setShareLocationEnabled, [shareLocation]),
      returnValueForMissingStub: null);
  @override
  void setCurrentLocation(_i10.LatLng? newLocation) =>
      super.noSuchMethod(Invocation.method(#setCurrentLocation, [newLocation]),
          returnValueForMissingStub: null);
}

/// A class which mocks [UserStatusState].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserStatusState extends _i1.Mock implements _i9.UserStatusState {
  MockUserStatusState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.UserStatusService get userStatusService =>
      (super.noSuchMethod(Invocation.getter(#userStatusService),
              returnValue: _FakeUserStatusService_12(
                  this, Invocation.getter(#userStatusService)))
          as _i12.UserStatusService);
  @override
  List<_i22.ContactLocation> get contacts =>
      (super.noSuchMethod(Invocation.getter(#contacts),
          returnValue: <_i22.ContactLocation>[]) as List<_i22.ContactLocation>);
  @override
  set contacts(List<_i22.ContactLocation>? value) =>
      super.noSuchMethod(Invocation.setter(#contacts, value),
          returnValueForMissingStub: null);
  @override
  _i23.ShareLocationMode get locationMode => (super.noSuchMethod(
      Invocation.getter(#locationMode),
      returnValue: _i23.ShareLocationMode.active) as _i23.ShareLocationMode);
  @override
  set locationMode(_i23.ShareLocationMode? value) =>
      super.noSuchMethod(Invocation.setter(#locationMode, value),
          returnValueForMissingStub: null);
  @override
  dynamic Function(List<_i22.ContactLocation>)
      get onContactsRefUpdateCallback =>
          (super.noSuchMethod(Invocation.getter(#onContactsRefUpdateCallback),
                  returnValue: (List<_i22.ContactLocation> __p0) => null)
              as dynamic Function(List<_i22.ContactLocation>));
  @override
  set onContactsRefUpdateCallback(
          dynamic Function(List<_i22.ContactLocation>)?
              _onContactsRefUpdateCallback) =>
      super.noSuchMethod(
          Invocation.setter(
              #onContactsRefUpdateCallback, _onContactsRefUpdateCallback),
          returnValueForMissingStub: null);
  @override
  dynamic Function(_i23.ShareLocationMode) get onLocationModeUpdateCallback =>
      (super.noSuchMethod(Invocation.getter(#onLocationModeUpdateCallback),
              returnValue: (_i23.ShareLocationMode __p0) => null)
          as dynamic Function(_i23.ShareLocationMode));
  @override
  set onLocationModeUpdateCallback(
          dynamic Function(_i23.ShareLocationMode)?
              _onLocationModeUpdateCallback) =>
      super.noSuchMethod(
          Invocation.setter(
              #onLocationModeUpdateCallback, _onLocationModeUpdateCallback),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i18.Future<dynamic> initializeListener() =>
      (super.noSuchMethod(Invocation.method(#initializeListener, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  void setContactList(List<_i22.ContactLocation>? newContacts) =>
      super.noSuchMethod(Invocation.method(#setContactList, [newContacts]),
          returnValueForMissingStub: null);
  @override
  void setLocationMode(_i23.ShareLocationMode? newMode) =>
      super.noSuchMethod(Invocation.method(#setLocationMode, [newMode]),
          returnValueForMissingStub: null);
}

/// A class which mocks [ProfileState].
///
/// See the documentation for Mockito's code generation for more information.
class MockProfileState extends _i1.Mock implements _i24.ProfileState {
  MockProfileState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i25.ProfileCurrentPages get currentPage =>
      (super.noSuchMethod(Invocation.getter(#currentPage),
              returnValue: _i25.ProfileCurrentPages.editProfile)
          as _i25.ProfileCurrentPages);
  @override
  set currentPage(_i25.ProfileCurrentPages? value) =>
      super.noSuchMethod(Invocation.setter(#currentPage, value),
          returnValueForMissingStub: null);
  @override
  bool get isAccount =>
      (super.noSuchMethod(Invocation.getter(#isAccount), returnValue: false)
          as bool);
  @override
  set isAccount(bool? value) =>
      super.noSuchMethod(Invocation.setter(#isAccount, value),
          returnValueForMissingStub: null);
  @override
  bool get isSaved =>
      (super.noSuchMethod(Invocation.getter(#isSaved), returnValue: false)
          as bool);
  @override
  set isSaved(bool? value) =>
      super.noSuchMethod(Invocation.setter(#isSaved, value),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  void setCurrentPage(_i25.ProfileCurrentPages? newPage) =>
      super.noSuchMethod(Invocation.method(#setCurrentPage, [newPage]),
          returnValueForMissingStub: null);
  @override
  void setProfileSaved(bool? isSaved) =>
      super.noSuchMethod(Invocation.method(#setProfileSaved, [isSaved]),
          returnValueForMissingStub: null);
  @override
  _i18.Future<dynamic> updateCurrentUser() =>
      (super.noSuchMethod(Invocation.method(#updateCurrentUser, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  _i18.Future<dynamic> updateUserImage(_i26.XFile? newImage) =>
      (super.noSuchMethod(Invocation.method(#updateUserImage, [newImage]),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  _i18.Future<dynamic> updateCurrentUserName(String? newName) =>
      (super.noSuchMethod(Invocation.method(#updateCurrentUserName, [newName]),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
}

/// A class which mocks [MapState].
///
/// See the documentation for Mockito's code generation for more information.
class MockMapState extends _i1.Mock implements _i27.MapState {
  MockMapState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.MapStatusService get mapStatusService =>
      (super.noSuchMethod(Invocation.getter(#mapStatusService),
              returnValue: _FakeMapStatusService_13(
                  this, Invocation.getter(#mapStatusService)))
          as _i13.MapStatusService);
  @override
  set timer(_i18.Timer? _timer) =>
      super.noSuchMethod(Invocation.setter(#timer, _timer),
          returnValueForMissingStub: null);
  @override
  Duration get durationInterval =>
      (super.noSuchMethod(Invocation.getter(#durationInterval),
              returnValue:
                  _FakeDuration_4(this, Invocation.getter(#durationInterval)))
          as Duration);
  @override
  set durationInterval(Duration? _durationInterval) => super.noSuchMethod(
      Invocation.setter(#durationInterval, _durationInterval),
      returnValueForMissingStub: null);
  @override
  bool get mapOpened =>
      (super.noSuchMethod(Invocation.getter(#mapOpened), returnValue: false)
          as bool);
  @override
  set mapOpened(bool? value) =>
      super.noSuchMethod(Invocation.setter(#mapOpened, value),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i18.Future<void> openMap() =>
      (super.noSuchMethod(Invocation.method(#openMap, []),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  _i18.Future<void> closeMap() =>
      (super.noSuchMethod(Invocation.method(#closeMap, []),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
}

/// A class which mocks [FriendsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockFriendsController extends _i1.Mock implements _i3.FriendsController {
  MockFriendsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get textFilter =>
      (super.noSuchMethod(Invocation.getter(#textFilter), returnValue: '')
          as String);
  @override
  set textFilter(String? _textFilter) =>
      super.noSuchMethod(Invocation.setter(#textFilter, _textFilter),
          returnValueForMissingStub: null);
  @override
  List<_i20.Contact> get allContacts =>
      (super.noSuchMethod(Invocation.getter(#allContacts),
          returnValue: <_i20.Contact>[]) as List<_i20.Contact>);
  @override
  set allContacts(List<_i20.Contact>? _allContacts) =>
      super.noSuchMethod(Invocation.setter(#allContacts, _allContacts),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i20.Contact> get filteredContacts =>
      (super.noSuchMethod(Invocation.getter(#filteredContacts),
              returnValue: _FakeObservableList_14<_i20.Contact>(
                  this, Invocation.getter(#filteredContacts)))
          as _i6.ObservableList<_i20.Contact>);
  @override
  set filteredContacts(_i6.ObservableList<_i20.Contact>? value) =>
      super.noSuchMethod(Invocation.setter(#filteredContacts, value),
          returnValueForMissingStub: null);
  @override
  List<_i20.Contact> get availableContacts =>
      (super.noSuchMethod(Invocation.getter(#availableContacts),
          returnValue: <_i20.Contact>[]) as List<_i20.Contact>);
  @override
  List<_i20.Contact> get unavailableContacts =>
      (super.noSuchMethod(Invocation.getter(#unavailableContacts),
          returnValue: <_i20.Contact>[]) as List<_i20.Contact>);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i18.Future<void> updateContacts() =>
      (super.noSuchMethod(Invocation.method(#updateContacts, []),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  void setTextFilter(String? text) =>
      super.noSuchMethod(Invocation.method(#setTextFilter, [text]),
          returnValueForMissingStub: null);
  @override
  _i18.Future<void> removeContact(_i20.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#removeContact, [contact]),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  void addContact(_i20.Contact? contact) =>
      super.noSuchMethod(Invocation.method(#addContact, [contact]),
          returnValueForMissingStub: null);
}

/// A class which mocks [RequestsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockRequestsController extends _i1.Mock
    implements _i2.RequestsController {
  MockRequestsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.FriendsController get friendsController =>
      (super.noSuchMethod(Invocation.getter(#friendsController),
              returnValue: _FakeFriendsController_1(
                  this, Invocation.getter(#friendsController)))
          as _i3.FriendsController);
  @override
  set friendsController(_i3.FriendsController? _friendsController) => super
      .noSuchMethod(Invocation.setter(#friendsController, _friendsController),
          returnValueForMissingStub: null);
  @override
  String get textFilter =>
      (super.noSuchMethod(Invocation.getter(#textFilter), returnValue: '')
          as String);
  @override
  set textFilter(String? _textFilter) =>
      super.noSuchMethod(Invocation.setter(#textFilter, _textFilter),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i20.Contact> get filteredPendingRequests =>
      (super.noSuchMethod(Invocation.getter(#filteredPendingRequests),
              returnValue: _FakeObservableList_14<_i20.Contact>(
                  this, Invocation.getter(#filteredPendingRequests)))
          as _i6.ObservableList<_i20.Contact>);
  @override
  set filteredPendingRequests(_i6.ObservableList<_i20.Contact>? value) =>
      super.noSuchMethod(Invocation.setter(#filteredPendingRequests, value),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i20.Contact> get pendingRequests =>
      (super.noSuchMethod(Invocation.getter(#pendingRequests),
              returnValue: _FakeObservableList_14<_i20.Contact>(
                  this, Invocation.getter(#pendingRequests)))
          as _i6.ObservableList<_i20.Contact>);
  @override
  set pendingRequests(_i6.ObservableList<_i20.Contact>? value) =>
      super.noSuchMethod(Invocation.setter(#pendingRequests, value),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i20.Contact> get sentRequests =>
      (super.noSuchMethod(Invocation.getter(#sentRequests),
              returnValue: _FakeObservableList_14<_i20.Contact>(
                  this, Invocation.getter(#sentRequests)))
          as _i6.ObservableList<_i20.Contact>);
  @override
  set sentRequests(_i6.ObservableList<_i20.Contact>? value) =>
      super.noSuchMethod(Invocation.setter(#sentRequests, value),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i18.Future<void> updateRequests() =>
      (super.noSuchMethod(Invocation.method(#updateRequests, []),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  _i18.Future<void> sendRequest(_i20.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#sendRequest, [contact]),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  _i18.Future<void> rejectRequest(_i20.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#rejectRequest, [contact]),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  _i18.Future<void> acceptRequest(_i20.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#acceptRequest, [contact]),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  _i18.Future<void> unsendRequest(_i20.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#unsendRequest, [contact]),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  void setTextFilter(String? text) =>
      super.noSuchMethod(Invocation.method(#setTextFilter, [text]),
          returnValueForMissingStub: null);
}

/// A class which mocks [SuggestionsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockSuggestionsController extends _i1.Mock
    implements _i4.SuggestionsController {
  MockSuggestionsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i14.ContactService get contactsService => (super.noSuchMethod(
          Invocation.getter(#contactsService),
          returnValue:
              _FakeContactService_15(this, Invocation.getter(#contactsService)))
      as _i14.ContactService);
  @override
  _i3.FriendsController get friendsController =>
      (super.noSuchMethod(Invocation.getter(#friendsController),
              returnValue: _FakeFriendsController_1(
                  this, Invocation.getter(#friendsController)))
          as _i3.FriendsController);
  @override
  _i2.RequestsController get requestsController =>
      (super.noSuchMethod(Invocation.getter(#requestsController),
              returnValue: _FakeRequestsController_0(
                  this, Invocation.getter(#requestsController)))
          as _i2.RequestsController);
  @override
  String get textFilter =>
      (super.noSuchMethod(Invocation.getter(#textFilter), returnValue: '')
          as String);
  @override
  set textFilter(String? _textFilter) =>
      super.noSuchMethod(Invocation.setter(#textFilter, _textFilter),
          returnValueForMissingStub: null);
  @override
  List<_i20.Contact> get allSuggestions =>
      (super.noSuchMethod(Invocation.getter(#allSuggestions),
          returnValue: <_i20.Contact>[]) as List<_i20.Contact>);
  @override
  set allSuggestions(List<_i20.Contact>? _allSuggestions) =>
      super.noSuchMethod(Invocation.setter(#allSuggestions, _allSuggestions),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i20.Contact> get filteredSuggestions =>
      (super.noSuchMethod(Invocation.getter(#filteredSuggestions),
              returnValue: _FakeObservableList_14<_i20.Contact>(
                  this, Invocation.getter(#filteredSuggestions)))
          as _i6.ObservableList<_i20.Contact>);
  @override
  set filteredSuggestions(_i6.ObservableList<_i20.Contact>? value) =>
      super.noSuchMethod(Invocation.setter(#filteredSuggestions, value),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i18.Future<void> sendRequest(_i20.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#sendRequest, [contact]),
              returnValue: _i18.Future<void>.value(),
              returnValueForMissingStub: _i18.Future<void>.value())
          as _i18.Future<void>);
  @override
  _i18.Future<dynamic> updateSuggestedContacts() =>
      (super.noSuchMethod(Invocation.method(#updateSuggestedContacts, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
  @override
  void setTextFilter(String? text) =>
      super.noSuchMethod(Invocation.method(#setTextFilter, [text]),
          returnValueForMissingStub: null);
  @override
  _i18.Future<dynamic> copyInvitation() =>
      (super.noSuchMethod(Invocation.method(#copyInvitation, []),
          returnValue: _i18.Future<dynamic>.value()) as _i18.Future<dynamic>);
}
