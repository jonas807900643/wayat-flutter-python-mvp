// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/app_state/user_status/user_status_state_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;
import 'dart:typed_data' as _i15;

import 'package:cloud_firestore/cloud_firestore.dart' as _i2;
import 'package:firebase_core/firebase_core.dart' as _i7;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i4;
import 'package:location/location.dart' as _i6;
import 'package:mobx/mobx.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/app_state/location_state/location_state.dart' as _i13;
import 'package:wayat/app_state/location_state/share_mode.dart' as _i11;
import 'package:wayat/domain/location/contact_location.dart' as _i10;
import 'package:wayat/services/contact/contact_service.dart' as _i12;
import 'package:wayat/services/location/share_location_service.dart' as _i3;
import 'package:wayat/services/location/share_location_service_factory.dart'
    as _i14;
import 'package:wayat/services/status/user_status_service_impl.dart' as _i8;

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

class _FakeFirebaseFirestore_0 extends _i1.SmartFake
    implements _i2.FirebaseFirestore {
  _FakeFirebaseFirestore_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeShareLocationService_1 extends _i1.SmartFake
    implements _i3.ShareLocationService {
  _FakeShareLocationService_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLatLng_2 extends _i1.SmartFake implements _i4.LatLng {
  _FakeLatLng_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_3 extends _i1.SmartFake
    implements _i5.ReactiveContext {
  _FakeReactiveContext_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLocationData_4 extends _i1.SmartFake implements _i6.LocationData {
  _FakeLocationData_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeFirebaseApp_5 extends _i1.SmartFake implements _i7.FirebaseApp {
  _FakeFirebaseApp_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeSettings_6 extends _i1.SmartFake implements _i2.Settings {
  _FakeSettings_6(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeCollectionReference_7<T extends Object?> extends _i1.SmartFake
    implements _i2.CollectionReference<T> {
  _FakeCollectionReference_7(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeWriteBatch_8 extends _i1.SmartFake implements _i2.WriteBatch {
  _FakeWriteBatch_8(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLoadBundleTask_9 extends _i1.SmartFake
    implements _i2.LoadBundleTask {
  _FakeLoadBundleTask_9(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeQuerySnapshot_10<T extends Object?> extends _i1.SmartFake
    implements _i2.QuerySnapshot<T> {
  _FakeQuerySnapshot_10(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeQuery_11<T extends Object?> extends _i1.SmartFake
    implements _i2.Query<T> {
  _FakeQuery_11(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeDocumentReference_12<T extends Object?> extends _i1.SmartFake
    implements _i2.DocumentReference<T> {
  _FakeDocumentReference_12(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [UserStatusService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserStatusService extends _i1.Mock implements _i8.UserStatusService {
  MockUserStatusService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FirebaseFirestore get db => (super.noSuchMethod(Invocation.getter(#db),
          returnValue: _FakeFirebaseFirestore_0(this, Invocation.getter(#db)))
      as _i2.FirebaseFirestore);
  @override
  _i9.Future<dynamic> setUpListener(
          {dynamic Function(List<_i10.ContactLocation>)? onContactsRefUpdate,
          dynamic Function(_i11.ShareLocationMode)? onLocationModeUpdate}) =>
      (super.noSuchMethod(
          Invocation.method(#setUpListener, [], {
            #onContactsRefUpdate: onContactsRefUpdate,
            #onLocationModeUpdate: onLocationModeUpdate
          }),
          returnValue: _i9.Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  _i11.ShareLocationMode getLocationModeFromStatus(
          Map<String, dynamic>? firestoreData) =>
      (super.noSuchMethod(
              Invocation.method(#getLocationModeFromStatus, [firestoreData]),
              returnValue: _i11.ShareLocationMode.active)
          as _i11.ShareLocationMode);
  @override
  _i9.Future<List<_i10.ContactLocation>> getContactRefsFromStatus(
          Map<String, dynamic>? firestoreData,
          {_i12.ContactService? contactService}) =>
      (super.noSuchMethod(
              Invocation.method(#getContactRefsFromStatus, [firestoreData],
                  {#contactService: contactService}),
              returnValue: _i9.Future<List<_i10.ContactLocation>>.value(
                  <_i10.ContactLocation>[]))
          as _i9.Future<List<_i10.ContactLocation>>);
}

/// A class which mocks [LocationState].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationState extends _i1.Mock implements _i13.LocationState {
  MockLocationState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.ShareLocationService get shareLocationService =>
      (super.noSuchMethod(Invocation.getter(#shareLocationService),
              returnValue: _FakeShareLocationService_1(
                  this, Invocation.getter(#shareLocationService)))
          as _i3.ShareLocationService);
  @override
  set shareLocationService(_i3.ShareLocationService? _shareLocationService) =>
      super.noSuchMethod(
          Invocation.setter(#shareLocationService, _shareLocationService),
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
  dynamic Function(_i4.LatLng) get onLocationChanged => (super.noSuchMethod(
      Invocation.getter(#onLocationChanged),
      returnValue: (_i4.LatLng __p0) => null) as dynamic Function(_i4.LatLng));
  @override
  set onLocationChanged(dynamic Function(_i4.LatLng)? _onLocationChanged) =>
      super.noSuchMethod(
          Invocation.setter(#onLocationChanged, _onLocationChanged),
          returnValueForMissingStub: null);
  @override
  _i5.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_3(this, Invocation.getter(#context)))
          as _i5.ReactiveContext);
  @override
  _i9.Future<dynamic> initialize(
          {_i14.ShareLocationServiceFactory? locationServiceFactory}) =>
      (super.noSuchMethod(
          Invocation.method(#initialize, [],
              {#locationServiceFactory: locationServiceFactory}),
          returnValue: _i9.Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  void setShareLocationEnabled(bool? shareLocation) => super.noSuchMethod(
      Invocation.method(#setShareLocationEnabled, [shareLocation]),
      returnValueForMissingStub: null);
  @override
  void setCurrentLocation(_i4.LatLng? newLocation) =>
      super.noSuchMethod(Invocation.method(#setCurrentLocation, [newLocation]),
          returnValueForMissingStub: null);
}

/// A class which mocks [ShareLocationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockShareLocationService extends _i1.Mock
    implements _i3.ShareLocationService {
  MockShareLocationService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void sendLocationToBack(_i6.LocationData? locationData) =>
      super.noSuchMethod(Invocation.method(#sendLocationToBack, [locationData]),
          returnValueForMissingStub: null);
  @override
  _i6.LocationData getCurrentLocation() =>
      (super.noSuchMethod(Invocation.method(#getCurrentLocation, []),
              returnValue: _FakeLocationData_4(
                  this, Invocation.method(#getCurrentLocation, [])))
          as _i6.LocationData);
  @override
  void setShareLocationMode(_i11.ShareLocationMode? shareLocationMode) =>
      super.noSuchMethod(
          Invocation.method(#setShareLocationMode, [shareLocationMode]),
          returnValueForMissingStub: null);
  @override
  void setShareLocationEnabled(bool? shareLocation) => super.noSuchMethod(
      Invocation.method(#setShareLocationEnabled, [shareLocation]),
      returnValueForMissingStub: null);
}

/// A class which mocks [FirebaseFirestore].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseFirestore extends _i1.Mock implements _i2.FirebaseFirestore {
  MockFirebaseFirestore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
          returnValue: _FakeFirebaseApp_5(this, Invocation.getter(#app)))
      as _i7.FirebaseApp);
  @override
  set app(_i7.FirebaseApp? _app) =>
      super.noSuchMethod(Invocation.setter(#app, _app),
          returnValueForMissingStub: null);
  @override
  set settings(_i2.Settings? settings) =>
      super.noSuchMethod(Invocation.setter(#settings, settings),
          returnValueForMissingStub: null);
  @override
  _i2.Settings get settings => (super.noSuchMethod(Invocation.getter(#settings),
          returnValue: _FakeSettings_6(this, Invocation.getter(#settings)))
      as _i2.Settings);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
          returnValue: <dynamic, dynamic>{}) as Map<dynamic, dynamic>);
  @override
  _i2.CollectionReference<Map<String, dynamic>> collection(
          String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collection, [collectionPath]),
              returnValue: _FakeCollectionReference_7<Map<String, dynamic>>(
                  this, Invocation.method(#collection, [collectionPath])))
          as _i2.CollectionReference<Map<String, dynamic>>);
  @override
  _i2.WriteBatch batch() => (super.noSuchMethod(Invocation.method(#batch, []),
          returnValue: _FakeWriteBatch_8(this, Invocation.method(#batch, [])))
      as _i2.WriteBatch);
  @override
  _i9.Future<void> clearPersistence() => (super.noSuchMethod(
      Invocation.method(#clearPersistence, []),
      returnValue: _i9.Future<void>.value(),
      returnValueForMissingStub: _i9.Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> enablePersistence(
          [_i2.PersistenceSettings? persistenceSettings]) =>
      (super.noSuchMethod(
              Invocation.method(#enablePersistence, [persistenceSettings]),
              returnValue: _i9.Future<void>.value(),
              returnValueForMissingStub: _i9.Future<void>.value())
          as _i9.Future<void>);
  @override
  _i2.LoadBundleTask loadBundle(_i15.Uint8List? bundle) =>
      (super.noSuchMethod(Invocation.method(#loadBundle, [bundle]),
              returnValue: _FakeLoadBundleTask_9(
                  this, Invocation.method(#loadBundle, [bundle])))
          as _i2.LoadBundleTask);
  @override
  void useFirestoreEmulator(String? host, int? port,
          {bool? sslEnabled = false}) =>
      super.noSuchMethod(
          Invocation.method(
              #useFirestoreEmulator, [host, port], {#sslEnabled: sslEnabled}),
          returnValueForMissingStub: null);
  @override
  _i9.Future<_i2.QuerySnapshot<Map<String, dynamic>>> namedQueryGet(
          String? name,
          {_i2.GetOptions? options = const _i2.GetOptions()}) =>
      (super.noSuchMethod(
          Invocation.method(#namedQueryGet, [name], {#options: options}),
          returnValue: _i9.Future<_i2.QuerySnapshot<Map<String, dynamic>>>.value(
              _FakeQuerySnapshot_10<Map<String, dynamic>>(this,
                  Invocation.method(#namedQueryGet, [name], {#options: options})))) as _i9
          .Future<_i2.QuerySnapshot<Map<String, dynamic>>>);
  @override
  _i2.Query<Map<String, dynamic>> collectionGroup(String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collectionGroup, [collectionPath]),
              returnValue: _FakeQuery_11<Map<String, dynamic>>(
                  this, Invocation.method(#collectionGroup, [collectionPath])))
          as _i2.Query<Map<String, dynamic>>);
  @override
  _i9.Future<void> disableNetwork() => (super.noSuchMethod(
      Invocation.method(#disableNetwork, []),
      returnValue: _i9.Future<void>.value(),
      returnValueForMissingStub: _i9.Future<void>.value()) as _i9.Future<void>);
  @override
  _i2.DocumentReference<Map<String, dynamic>> doc(String? documentPath) =>
      (super.noSuchMethod(Invocation.method(#doc, [documentPath]),
              returnValue: _FakeDocumentReference_12<Map<String, dynamic>>(
                  this, Invocation.method(#doc, [documentPath])))
          as _i2.DocumentReference<Map<String, dynamic>>);
  @override
  _i9.Future<void> enableNetwork() => (super.noSuchMethod(
      Invocation.method(#enableNetwork, []),
      returnValue: _i9.Future<void>.value(),
      returnValueForMissingStub: _i9.Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Stream<void> snapshotsInSync() =>
      (super.noSuchMethod(Invocation.method(#snapshotsInSync, []),
          returnValue: _i9.Stream<void>.empty()) as _i9.Stream<void>);
  @override
  _i9.Future<T> runTransaction<T>(_i2.TransactionHandler<T>? transactionHandler,
          {Duration? timeout = const Duration(seconds: 30),
          int? maxAttempts = 5}) =>
      (super.noSuchMethod(
          Invocation.method(#runTransaction, [transactionHandler],
              {#timeout: timeout, #maxAttempts: maxAttempts}),
          returnValue: _i9.Future<T>.value(null)) as _i9.Future<T>);
  @override
  _i9.Future<void> terminate() => (super.noSuchMethod(
      Invocation.method(#terminate, []),
      returnValue: _i9.Future<void>.value(),
      returnValueForMissingStub: _i9.Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> waitForPendingWrites() => (super.noSuchMethod(
      Invocation.method(#waitForPendingWrites, []),
      returnValue: _i9.Future<void>.value(),
      returnValueForMissingStub: _i9.Future<void>.value()) as _i9.Future<void>);
}
