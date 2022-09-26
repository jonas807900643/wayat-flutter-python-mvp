// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/features/map/search_bar_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i13;

import 'package:google_maps_flutter/google_maps_flutter.dart' as _i4;
import 'package:image_picker/image_picker.dart' as _i21;
import 'package:location/location.dart' as _i10;
import 'package:mobx/mobx.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/app_state/location_state/location_state.dart' as _i12;
import 'package:wayat/app_state/location_state/share_mode.dart' as _i15;
import 'package:wayat/app_state/map_state/map_state.dart' as _i16;
import 'package:wayat/app_state/user_status/user_status_state.dart' as _i3;
import 'package:wayat/domain/contact/contact.dart' as _i19;
import 'package:wayat/domain/group/group.dart' as _i18;
import 'package:wayat/domain/location/contact_location.dart' as _i14;
import 'package:wayat/features/groups/controllers/groups_controller/groups_controller.dart'
    as _i20;
import 'package:wayat/features/map/controller/map_controller.dart' as _i17;
import 'package:wayat/services/groups/groups_service.dart' as _i11;
import 'package:wayat/services/image_service/image_service.dart' as _i9;
import 'package:wayat/services/location/share_location_service.dart' as _i2;
import 'package:wayat/services/location/share_location_service_factory.dart'
    as _i5;
import 'package:wayat/services/status/map_status_service.dart' as _i8;
import 'package:wayat/services/status/user_status_service_impl.dart' as _i7;

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

class _FakeShareLocationService_0 extends _i1.SmartFake
    implements _i2.ShareLocationService {
  _FakeShareLocationService_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeUserStatusState_1 extends _i1.SmartFake
    implements _i3.UserStatusState {
  _FakeUserStatusState_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLatLng_2 extends _i1.SmartFake implements _i4.LatLng {
  _FakeLatLng_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeShareLocationServiceFactory_3 extends _i1.SmartFake
    implements _i5.ShareLocationServiceFactory {
  _FakeShareLocationServiceFactory_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_4 extends _i1.SmartFake
    implements _i6.ReactiveContext {
  _FakeReactiveContext_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeUserStatusService_5 extends _i1.SmartFake
    implements _i7.UserStatusService {
  _FakeUserStatusService_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeMapStatusService_6 extends _i1.SmartFake
    implements _i8.MapStatusService {
  _FakeMapStatusService_6(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeDuration_7 extends _i1.SmartFake implements Duration {
  _FakeDuration_7(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeImageService_8 extends _i1.SmartFake implements _i9.ImageService {
  _FakeImageService_8(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLocation_9 extends _i1.SmartFake implements _i10.Location {
  _FakeLocation_9(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeObservableSet_10<T> extends _i1.SmartFake
    implements _i6.ObservableSet<T> {
  _FakeObservableSet_10(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeGoogleMapController_11 extends _i1.SmartFake
    implements _i4.GoogleMapController {
  _FakeGoogleMapController_11(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeGroupsService_12 extends _i1.SmartFake
    implements _i11.GroupsService {
  _FakeGroupsService_12(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeObservableList_13<T> extends _i1.SmartFake
    implements _i6.ObservableList<T> {
  _FakeObservableList_13(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [LocationState].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationState extends _i1.Mock implements _i12.LocationState {
  MockLocationState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ShareLocationService get shareLocationService =>
      (super.noSuchMethod(Invocation.getter(#shareLocationService),
              returnValue: _FakeShareLocationService_0(
                  this, Invocation.getter(#shareLocationService)))
          as _i2.ShareLocationService);
  @override
  set shareLocationService(_i2.ShareLocationService? _shareLocationService) =>
      super.noSuchMethod(
          Invocation.setter(#shareLocationService, _shareLocationService),
          returnValueForMissingStub: null);
  @override
  _i3.UserStatusState get userStatusState => (super.noSuchMethod(
          Invocation.getter(#userStatusState),
          returnValue:
              _FakeUserStatusState_1(this, Invocation.getter(#userStatusState)))
      as _i3.UserStatusState);
  @override
  set userStatusState(_i3.UserStatusState? _userStatusState) =>
      super.noSuchMethod(Invocation.setter(#userStatusState, _userStatusState),
          returnValueForMissingStub: null);
  @override
  _i4.LatLng get currentLocation => (super.noSuchMethod(
          Invocation.getter(#currentLocation),
          returnValue: _FakeLatLng_2(this, Invocation.getter(#currentLocation)))
      as _i4.LatLng);
  @override
  set currentLocation(_i4.LatLng? value) =>
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
  _i5.ShareLocationServiceFactory get shareLocationServiceFactory =>
      (super.noSuchMethod(Invocation.getter(#shareLocationServiceFactory),
              returnValue: _FakeShareLocationServiceFactory_3(
                  this, Invocation.getter(#shareLocationServiceFactory)))
          as _i5.ShareLocationServiceFactory);
  @override
  dynamic Function(_i4.LatLng) get onLocationChanged => (super.noSuchMethod(
      Invocation.getter(#onLocationChanged),
      returnValue: (_i4.LatLng __p0) => null) as dynamic Function(_i4.LatLng));
  @override
  set onLocationChanged(dynamic Function(_i4.LatLng)? _onLocationChanged) =>
      super.noSuchMethod(
          Invocation.setter(#onLocationChanged, _onLocationChanged),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_4(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i13.Future<void> initialize() =>
      (super.noSuchMethod(Invocation.method(#initialize, []),
              returnValue: _i13.Future<void>.value(),
              returnValueForMissingStub: _i13.Future<void>.value())
          as _i13.Future<void>);
  @override
  void setShareLocationEnabled(bool? shareLocation) => super.noSuchMethod(
      Invocation.method(#setShareLocationEnabled, [shareLocation]),
      returnValueForMissingStub: null);
  @override
  void setCurrentLocation(_i4.LatLng? newLocation) =>
      super.noSuchMethod(Invocation.method(#setCurrentLocation, [newLocation]),
          returnValueForMissingStub: null);
}

/// A class which mocks [UserStatusState].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserStatusState extends _i1.Mock implements _i3.UserStatusState {
  MockUserStatusState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.UserStatusService get userStatusService =>
      (super.noSuchMethod(Invocation.getter(#userStatusService),
              returnValue: _FakeUserStatusService_5(
                  this, Invocation.getter(#userStatusService)))
          as _i7.UserStatusService);
  @override
  List<_i14.ContactLocation> get contacts =>
      (super.noSuchMethod(Invocation.getter(#contacts),
          returnValue: <_i14.ContactLocation>[]) as List<_i14.ContactLocation>);
  @override
  set contacts(List<_i14.ContactLocation>? value) =>
      super.noSuchMethod(Invocation.setter(#contacts, value),
          returnValueForMissingStub: null);
  @override
  _i15.ShareLocationMode get locationMode => (super.noSuchMethod(
      Invocation.getter(#locationMode),
      returnValue: _i15.ShareLocationMode.active) as _i15.ShareLocationMode);
  @override
  set locationMode(_i15.ShareLocationMode? value) =>
      super.noSuchMethod(Invocation.setter(#locationMode, value),
          returnValueForMissingStub: null);
  @override
  dynamic Function(List<_i14.ContactLocation>)
      get onContactsRefUpdateCallback =>
          (super.noSuchMethod(Invocation.getter(#onContactsRefUpdateCallback),
                  returnValue: (List<_i14.ContactLocation> __p0) => null)
              as dynamic Function(List<_i14.ContactLocation>));
  @override
  set onContactsRefUpdateCallback(
          dynamic Function(List<_i14.ContactLocation>)?
              _onContactsRefUpdateCallback) =>
      super.noSuchMethod(
          Invocation.setter(
              #onContactsRefUpdateCallback, _onContactsRefUpdateCallback),
          returnValueForMissingStub: null);
  @override
  dynamic Function(_i15.ShareLocationMode) get onLocationModeUpdateCallback =>
      (super.noSuchMethod(Invocation.getter(#onLocationModeUpdateCallback),
              returnValue: (_i15.ShareLocationMode __p0) => null)
          as dynamic Function(_i15.ShareLocationMode));
  @override
  set onLocationModeUpdateCallback(
          dynamic Function(_i15.ShareLocationMode)?
              _onLocationModeUpdateCallback) =>
      super.noSuchMethod(
          Invocation.setter(
              #onLocationModeUpdateCallback, _onLocationModeUpdateCallback),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_4(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i13.Future<dynamic> initializeListener() =>
      (super.noSuchMethod(Invocation.method(#initializeListener, []),
          returnValue: _i13.Future<dynamic>.value()) as _i13.Future<dynamic>);
  @override
  void setContactList(List<_i14.ContactLocation>? newContacts) =>
      super.noSuchMethod(Invocation.method(#setContactList, [newContacts]),
          returnValueForMissingStub: null);
  @override
  void setLocationMode(_i15.ShareLocationMode? newMode) =>
      super.noSuchMethod(Invocation.method(#setLocationMode, [newMode]),
          returnValueForMissingStub: null);
}

/// A class which mocks [MapState].
///
/// See the documentation for Mockito's code generation for more information.
class MockMapState extends _i1.Mock implements _i16.MapState {
  MockMapState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.MapStatusService get mapStatusService => (super.noSuchMethod(
      Invocation.getter(#mapStatusService),
      returnValue: _FakeMapStatusService_6(
          this, Invocation.getter(#mapStatusService))) as _i8.MapStatusService);
  @override
  set timer(_i13.Timer? _timer) =>
      super.noSuchMethod(Invocation.setter(#timer, _timer),
          returnValueForMissingStub: null);
  @override
  Duration get durationInterval =>
      (super.noSuchMethod(Invocation.getter(#durationInterval),
              returnValue:
                  _FakeDuration_7(this, Invocation.getter(#durationInterval)))
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
                  _FakeReactiveContext_4(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i13.Future<void> openMap() =>
      (super.noSuchMethod(Invocation.method(#openMap, []),
              returnValue: _i13.Future<void>.value(),
              returnValueForMissingStub: _i13.Future<void>.value())
          as _i13.Future<void>);
  @override
  _i13.Future<void> closeMap() =>
      (super.noSuchMethod(Invocation.method(#closeMap, []),
              returnValue: _i13.Future<void>.value(),
              returnValueForMissingStub: _i13.Future<void>.value())
          as _i13.Future<void>);
}

/// A class which mocks [MapController].
///
/// See the documentation for Mockito's code generation for more information.
class MockMapController extends _i1.Mock implements _i17.MapController {
  MockMapController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.ImageService get imageService =>
      (super.noSuchMethod(Invocation.getter(#imageService),
              returnValue:
                  _FakeImageService_8(this, Invocation.getter(#imageService)))
          as _i9.ImageService);
  @override
  set imageService(_i9.ImageService? _imageService) =>
      super.noSuchMethod(Invocation.setter(#imageService, _imageService),
          returnValueForMissingStub: null);
  @override
  bool get sharingLocation => (super
          .noSuchMethod(Invocation.getter(#sharingLocation), returnValue: false)
      as bool);
  @override
  set sharingLocation(bool? value) =>
      super.noSuchMethod(Invocation.setter(#sharingLocation, value),
          returnValueForMissingStub: null);
  @override
  _i10.Location get currentLocation =>
      (super.noSuchMethod(Invocation.getter(#currentLocation),
              returnValue:
                  _FakeLocation_9(this, Invocation.getter(#currentLocation)))
          as _i10.Location);
  @override
  set currentLocation(_i10.Location? value) =>
      super.noSuchMethod(Invocation.setter(#currentLocation, value),
          returnValueForMissingStub: null);
  @override
  Set<_i4.Marker> get allMarkers =>
      (super.noSuchMethod(Invocation.getter(#allMarkers),
          returnValue: <_i4.Marker>{}) as Set<_i4.Marker>);
  @override
  set allMarkers(Set<_i4.Marker>? _allMarkers) =>
      super.noSuchMethod(Invocation.setter(#allMarkers, _allMarkers),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableSet<_i4.Marker> get filteredMarkers =>
      (super.noSuchMethod(Invocation.getter(#filteredMarkers),
              returnValue: _FakeObservableSet_10<_i4.Marker>(
                  this, Invocation.getter(#filteredMarkers)))
          as _i6.ObservableSet<_i4.Marker>);
  @override
  set filteredMarkers(_i6.ObservableSet<_i4.Marker>? value) =>
      super.noSuchMethod(Invocation.setter(#filteredMarkers, value),
          returnValueForMissingStub: null);
  @override
  List<_i14.ContactLocation> get contacts =>
      (super.noSuchMethod(Invocation.getter(#contacts),
          returnValue: <_i14.ContactLocation>[]) as List<_i14.ContactLocation>);
  @override
  set contacts(List<_i14.ContactLocation>? _contacts) =>
      super.noSuchMethod(Invocation.setter(#contacts, _contacts),
          returnValueForMissingStub: null);
  @override
  _i4.GoogleMapController get gMapController =>
      (super.noSuchMethod(Invocation.getter(#gMapController),
              returnValue: _FakeGoogleMapController_11(
                  this, Invocation.getter(#gMapController)))
          as _i4.GoogleMapController);
  @override
  set gMapController(_i4.GoogleMapController? _gMapController) =>
      super.noSuchMethod(Invocation.setter(#gMapController, _gMapController),
          returnValueForMissingStub: null);
  @override
  String get searchBarText =>
      (super.noSuchMethod(Invocation.getter(#searchBarText), returnValue: '')
          as String);
  @override
  set searchBarText(String? _searchBarText) =>
      super.noSuchMethod(Invocation.setter(#searchBarText, _searchBarText),
          returnValueForMissingStub: null);
  @override
  set selectedGroup(_i18.Group? _selectedGroup) =>
      super.noSuchMethod(Invocation.setter(#selectedGroup, _selectedGroup),
          returnValueForMissingStub: null);
  @override
  List<_i19.Contact> get groupMembers =>
      (super.noSuchMethod(Invocation.getter(#groupMembers),
          returnValue: <_i19.Contact>[]) as List<_i19.Contact>);
  @override
  set groupMembers(List<_i19.Contact>? _groupMembers) =>
      super.noSuchMethod(Invocation.setter(#groupMembers, _groupMembers),
          returnValueForMissingStub: null);
  @override
  dynamic Function(_i14.ContactLocation, _i4.BitmapDescriptor)
      get onMarkerPressed =>
          (super.noSuchMethod(Invocation.getter(#onMarkerPressed),
              returnValue:
                  (_i14.ContactLocation contact, _i4.BitmapDescriptor icon) =>
                      null) as dynamic Function(
              _i14.ContactLocation, _i4.BitmapDescriptor));
  @override
  set onMarkerPressed(
          dynamic Function(_i14.ContactLocation, _i4.BitmapDescriptor)?
              _onMarkerPressed) =>
      super.noSuchMethod(Invocation.setter(#onMarkerPressed, _onMarkerPressed),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_4(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  void setOnMarkerPressed(
          dynamic Function(_i14.ContactLocation, _i4.BitmapDescriptor)?
              onMarkerPressed) =>
      super.noSuchMethod(
          Invocation.method(#setOnMarkerPressed, [onMarkerPressed]),
          returnValueForMissingStub: null);
  @override
  _i13.Future<dynamic> getMarkers() =>
      (super.noSuchMethod(Invocation.method(#getMarkers, []),
          returnValue: _i13.Future<dynamic>.value()) as _i13.Future<dynamic>);
  @override
  _i13.Future<Set<_i4.Marker>> generateMarkers() =>
      (super.noSuchMethod(Invocation.method(#generateMarkers, []),
              returnValue: _i13.Future<Set<_i4.Marker>>.value(<_i4.Marker>{}))
          as _i13.Future<Set<_i4.Marker>>);
  @override
  void updateMarkers() =>
      super.noSuchMethod(Invocation.method(#updateMarkers, []),
          returnValueForMissingStub: null);
  @override
  void setMarkers(Set<_i4.Marker>? newMarkers) =>
      super.noSuchMethod(Invocation.method(#setMarkers, [newMarkers]),
          returnValueForMissingStub: null);
  @override
  void setContacts(List<_i14.ContactLocation>? newContacts) =>
      super.noSuchMethod(Invocation.method(#setContacts, [newContacts]),
          returnValueForMissingStub: null);
  @override
  void setSharingLocation(bool? newValue) =>
      super.noSuchMethod(Invocation.method(#setSharingLocation, [newValue]),
          returnValueForMissingStub: null);
  @override
  void setSearchBarText(String? newText) =>
      super.noSuchMethod(Invocation.method(#setSearchBarText, [newText]),
          returnValueForMissingStub: null);
  @override
  void filterGroup(_i18.Group? group) =>
      super.noSuchMethod(Invocation.method(#filterGroup, [group]),
          returnValueForMissingStub: null);
  @override
  void filterMarkersByGroup() =>
      super.noSuchMethod(Invocation.method(#filterMarkersByGroup, []),
          returnValueForMissingStub: null);
  @override
  void filterMarkers() =>
      super.noSuchMethod(Invocation.method(#filterMarkers, []),
          returnValueForMissingStub: null);
  @override
  void onSuggestionsTap(dynamic contact) =>
      super.noSuchMethod(Invocation.method(#onSuggestionsTap, [contact]),
          returnValueForMissingStub: null);
}

/// A class which mocks [ImageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockImageService extends _i1.Mock implements _i9.ImageService {
  MockImageService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.Future<Map<String, _i4.BitmapDescriptor>> getBitmapsFromUrl(
          List<String>? urls) =>
      (super.noSuchMethod(Invocation.method(#getBitmapsFromUrl, [urls]),
              returnValue: _i13.Future<Map<String, _i4.BitmapDescriptor>>.value(
                  <String, _i4.BitmapDescriptor>{}))
          as _i13.Future<Map<String, _i4.BitmapDescriptor>>);
}

/// A class which mocks [GroupsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockGroupsController extends _i1.Mock implements _i20.GroupsController {
  MockGroupsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i11.GroupsService get groupsService => (super.noSuchMethod(
          Invocation.getter(#groupsService),
          returnValue:
              _FakeGroupsService_12(this, Invocation.getter(#groupsService)))
      as _i11.GroupsService);
  @override
  set groupsService(_i11.GroupsService? _groupsService) =>
      super.noSuchMethod(Invocation.setter(#groupsService, _groupsService),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i18.Group> get groups => (super.noSuchMethod(
      Invocation.getter(#groups),
      returnValue: _FakeObservableList_13<_i18.Group>(
          this, Invocation.getter(#groups))) as _i6.ObservableList<_i18.Group>);
  @override
  set groups(_i6.ObservableList<_i18.Group>? value) =>
      super.noSuchMethod(Invocation.setter(#groups, value),
          returnValueForMissingStub: null);
  @override
  set selectedGroup(_i18.Group? value) =>
      super.noSuchMethod(Invocation.setter(#selectedGroup, value),
          returnValueForMissingStub: null);
  @override
  bool get editGroup =>
      (super.noSuchMethod(Invocation.getter(#editGroup), returnValue: false)
          as bool);
  @override
  set editGroup(bool? value) =>
      super.noSuchMethod(Invocation.setter(#editGroup, value),
          returnValueForMissingStub: null);
  @override
  bool get updatingGroup =>
      (super.noSuchMethod(Invocation.getter(#updatingGroup), returnValue: false)
          as bool);
  @override
  set updatingGroup(bool? value) =>
      super.noSuchMethod(Invocation.setter(#updatingGroup, value),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_4(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i13.Future<bool> updateGroups() =>
      (super.noSuchMethod(Invocation.method(#updateGroups, []),
          returnValue: _i13.Future<bool>.value(false)) as _i13.Future<bool>);
  @override
  void setGroups(List<_i18.Group>? groups) =>
      super.noSuchMethod(Invocation.method(#setGroups, [groups]),
          returnValueForMissingStub: null);
  @override
  _i13.Future<dynamic> createGroup(_i18.Group? group, _i21.XFile? picture) =>
      (super.noSuchMethod(Invocation.method(#createGroup, [group, picture]),
          returnValue: _i13.Future<dynamic>.value()) as _i13.Future<dynamic>);
  @override
  void setSelectedGroup(_i18.Group? group) =>
      super.noSuchMethod(Invocation.method(#setSelectedGroup, [group]),
          returnValueForMissingStub: null);
  @override
  void setEditGroup(bool? editValue) =>
      super.noSuchMethod(Invocation.method(#setEditGroup, [editValue]),
          returnValueForMissingStub: null);
  @override
  void setUpdatingGroup(bool? updatingGroup) =>
      super.noSuchMethod(Invocation.method(#setUpdatingGroup, [updatingGroup]),
          returnValueForMissingStub: null);
  @override
  _i13.Future<dynamic> deleteGroup(String? groupId) =>
      (super.noSuchMethod(Invocation.method(#deleteGroup, [groupId]),
          returnValue: _i13.Future<dynamic>.value()) as _i13.Future<dynamic>);
}
