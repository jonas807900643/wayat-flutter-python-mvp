// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/app_state/profile_state/profile_state_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:http/http.dart' as _i4;
import 'package:image_picker/image_picker.dart' as _i7;
import 'package:mobx/mobx.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/app_state/user_session/session_state.dart' as _i8;
import 'package:wayat/domain/user/my_user.dart' as _i9;
import 'package:wayat/services/authentication/auth_service.dart' as _i2;
import 'package:wayat/services/common/http_provider/http_provider.dart' as _i10;
import 'package:wayat/services/profile/profile_service.dart' as _i5;

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

class _FakeAuthService_0 extends _i1.SmartFake implements _i2.AuthService {
  _FakeAuthService_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_1 extends _i1.SmartFake
    implements _i3.ReactiveContext {
  _FakeReactiveContext_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeResponse_2 extends _i1.SmartFake implements _i4.Response {
  _FakeResponse_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeStreamedResponse_3 extends _i1.SmartFake
    implements _i4.StreamedResponse {
  _FakeStreamedResponse_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [ProfileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockProfileService extends _i1.Mock implements _i5.ProfileService {
  MockProfileService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<bool> uploadProfileImage(_i7.XFile? selectedImage) => (super
      .noSuchMethod(Invocation.method(#uploadProfileImage, [selectedImage]),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<bool> updateProfileName(String? name) =>
      (super.noSuchMethod(Invocation.method(#updateProfileName, [name]),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
}

/// A class which mocks [SessionState].
///
/// See the documentation for Mockito's code generation for more information.
class MockSessionState extends _i1.Mock implements _i8.SessionState {
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
  set currentUser(_i9.MyUser? value) =>
      super.noSuchMethod(Invocation.setter(#currentUser, value),
          returnValueForMissingStub: null);
  @override
  _i2.AuthService get authService =>
      (super.noSuchMethod(Invocation.getter(#authService),
              returnValue:
                  _FakeAuthService_0(this, Invocation.getter(#authService)))
          as _i2.AuthService);
  @override
  _i3.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_1(this, Invocation.getter(#context)))
          as _i3.ReactiveContext);
  @override
  _i6.Future<void> doneOnBoarding() => (super.noSuchMethod(
      Invocation.method(#doneOnBoarding, []),
      returnValue: _i6.Future<void>.value(),
      returnValueForMissingStub: _i6.Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> isLogged() => (super.noSuchMethod(
      Invocation.method(#isLogged, []),
      returnValue: _i6.Future<void>.value(),
      returnValueForMissingStub: _i6.Future<void>.value()) as _i6.Future<void>);
  @override
  void setGoogleSignIn(bool? signedIn) =>
      super.noSuchMethod(Invocation.method(#setGoogleSignIn, [signedIn]),
          returnValueForMissingStub: null);
  @override
  void setFinishLoggedIn(bool? finishedLoggedIn) => super.noSuchMethod(
      Invocation.method(#setFinishLoggedIn, [finishedLoggedIn]),
      returnValueForMissingStub: null);
  @override
  _i6.Future<dynamic> initializeUser() =>
      (super.noSuchMethod(Invocation.method(#initializeUser, []),
          returnValue: _i6.Future<dynamic>.value()) as _i6.Future<dynamic>);
  @override
  _i6.Future<dynamic> updateCurrentUser() =>
      (super.noSuchMethod(Invocation.method(#updateCurrentUser, []),
          returnValue: _i6.Future<dynamic>.value()) as _i6.Future<dynamic>);
  @override
  _i6.Future<bool> updatePhone(String? phone) =>
      (super.noSuchMethod(Invocation.method(#updatePhone, [phone]),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<bool> setDoneOnBoarding() =>
      (super.noSuchMethod(Invocation.method(#setDoneOnBoarding, []),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<dynamic> doLoginProcess() =>
      (super.noSuchMethod(Invocation.method(#doLoginProcess, []),
          returnValue: _i6.Future<dynamic>.value()) as _i6.Future<dynamic>);
  @override
  _i6.Future<dynamic> initializeUserSession() =>
      (super.noSuchMethod(Invocation.method(#initializeUserSession, []),
          returnValue: _i6.Future<dynamic>.value()) as _i6.Future<dynamic>);
  @override
  _i6.Future<void> login() => (super.noSuchMethod(Invocation.method(#login, []),
      returnValue: _i6.Future<void>.value(),
      returnValueForMissingStub: _i6.Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<dynamic> logOut() =>
      (super.noSuchMethod(Invocation.method(#logOut, []),
          returnValue: _i6.Future<dynamic>.value()) as _i6.Future<dynamic>);
  @override
  bool isOnboardingCompleted() =>
      (super.noSuchMethod(Invocation.method(#isOnboardingCompleted, []),
          returnValue: false) as bool);
  @override
  bool hasPhone() =>
      (super.noSuchMethod(Invocation.method(#hasPhone, []), returnValue: false)
          as bool);
}

/// A class which mocks [HttpProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpProvider extends _i1.Mock implements _i10.HttpProvider {
  MockHttpProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get baseUrl =>
      (super.noSuchMethod(Invocation.getter(#baseUrl), returnValue: '')
          as String);
  @override
  set baseUrl(String? _baseUrl) =>
      super.noSuchMethod(Invocation.setter(#baseUrl, _baseUrl),
          returnValueForMissingStub: null);
  @override
  _i6.Future<Map<String, dynamic>> sendGetRequest(String? subPath) =>
      (super.noSuchMethod(Invocation.method(#sendGetRequest, [subPath]),
              returnValue:
                  _i6.Future<Map<String, dynamic>>.value(<String, dynamic>{}))
          as _i6.Future<Map<String, dynamic>>);
  @override
  _i6.Future<_i4.Response> sendPostRequest(
          String? subPath, Map<String, dynamic>? body) =>
      (super.noSuchMethod(Invocation.method(#sendPostRequest, [subPath, body]),
              returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_2(
                  this, Invocation.method(#sendPostRequest, [subPath, body]))))
          as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.StreamedResponse> sendPostImageRequest(
          String? subPath, String? filePath, String? type) =>
      (super.noSuchMethod(
          Invocation.method(#sendPostImageRequest, [subPath, filePath, type]),
          returnValue: _i6.Future<_i4.StreamedResponse>.value(
              _FakeStreamedResponse_3(
                  this,
                  Invocation.method(
                      #sendPostImageRequest, [subPath, filePath, type])))) as _i6
          .Future<_i4.StreamedResponse>);
  @override
  _i6.Future<bool> sendPutRequest(
          String? subPath, Map<String, dynamic>? body) =>
      (super.noSuchMethod(Invocation.method(#sendPutRequest, [subPath, body]),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<bool> sendDelRequest(String? subPath) =>
      (super.noSuchMethod(Invocation.method(#sendDelRequest, [subPath]),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
}
