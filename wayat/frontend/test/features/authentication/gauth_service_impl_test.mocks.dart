// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/features/authentication/gauth_service_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:mobx/mobx.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/app_state/user_session/session_state.dart' as _i6;
import 'package:wayat/domain/user/my_user.dart' as _i5;
import 'package:wayat/services/authentication/auth_service.dart' as _i2;
import 'package:wayat/services/authentication/gauth_service_impl.dart' as _i8;
import 'package:wayat/services/common/http_provider/http_provider.dart' as _i4;

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
  _FakeAuthService_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeReactiveContext_1 extends _i1.SmartFake
    implements _i3.ReactiveContext {
  _FakeReactiveContext_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpProvider_2 extends _i1.SmartFake implements _i4.HttpProvider {
  _FakeHttpProvider_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMyUser_3 extends _i1.SmartFake implements _i5.MyUser {
  _FakeMyUser_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SessionState].
///
/// See the documentation for Mockito's code generation for more information.
class MockSessionState extends _i1.Mock implements _i6.SessionState {
  MockSessionState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get finishLoggedIn => (super.noSuchMethod(
        Invocation.getter(#finishLoggedIn),
        returnValue: false,
      ) as bool);
  @override
  set finishLoggedIn(bool? value) => super.noSuchMethod(
        Invocation.setter(
          #finishLoggedIn,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get googleSignedIn => (super.noSuchMethod(
        Invocation.getter(#googleSignedIn),
        returnValue: false,
      ) as bool);
  @override
  set googleSignedIn(bool? value) => super.noSuchMethod(
        Invocation.setter(
          #googleSignedIn,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get hasDoneOnboarding => (super.noSuchMethod(
        Invocation.getter(#hasDoneOnboarding),
        returnValue: false,
      ) as bool);
  @override
  set hasDoneOnboarding(bool? value) => super.noSuchMethod(
        Invocation.setter(
          #hasDoneOnboarding,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set currentUser(_i5.MyUser? value) => super.noSuchMethod(
        Invocation.setter(
          #currentUser,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.AuthService get authService => (super.noSuchMethod(
        Invocation.getter(#authService),
        returnValue: _FakeAuthService_0(
          this,
          Invocation.getter(#authService),
        ),
      ) as _i2.AuthService);
  @override
  _i3.ReactiveContext get context => (super.noSuchMethod(
        Invocation.getter(#context),
        returnValue: _FakeReactiveContext_1(
          this,
          Invocation.getter(#context),
        ),
      ) as _i3.ReactiveContext);
  @override
  _i7.Future<void> doneOnBoarding() => (super.noSuchMethod(
        Invocation.method(
          #doneOnBoarding,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> isLogged() => (super.noSuchMethod(
        Invocation.method(
          #isLogged,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  void setGoogleSignIn(bool? signedIn) => super.noSuchMethod(
        Invocation.method(
          #setGoogleSignIn,
          [signedIn],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void setFinishLoggedIn(bool? finishedLoggedIn) => super.noSuchMethod(
        Invocation.method(
          #setFinishLoggedIn,
          [finishedLoggedIn],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.Future<dynamic> initializeUser() => (super.noSuchMethod(
        Invocation.method(
          #initializeUser,
          [],
        ),
        returnValue: _i7.Future<dynamic>.value(),
      ) as _i7.Future<dynamic>);
  @override
  _i7.Future<dynamic> updateCurrentUser() => (super.noSuchMethod(
        Invocation.method(
          #updateCurrentUser,
          [],
        ),
        returnValue: _i7.Future<dynamic>.value(),
      ) as _i7.Future<dynamic>);
  @override
  _i7.Future<bool> updatePhone(String? phone) => (super.noSuchMethod(
        Invocation.method(
          #updatePhone,
          [phone],
        ),
        returnValue: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);
  @override
  _i7.Future<bool> setDoneOnBoarding() => (super.noSuchMethod(
        Invocation.method(
          #setDoneOnBoarding,
          [],
        ),
        returnValue: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);
  @override
  _i7.Future<dynamic> doLoginProcess() => (super.noSuchMethod(
        Invocation.method(
          #doLoginProcess,
          [],
        ),
        returnValue: _i7.Future<dynamic>.value(),
      ) as _i7.Future<dynamic>);
  @override
  _i7.Future<dynamic> initializeUserSession() => (super.noSuchMethod(
        Invocation.method(
          #initializeUserSession,
          [],
        ),
        returnValue: _i7.Future<dynamic>.value(),
      ) as _i7.Future<dynamic>);
  @override
  _i7.Future<void> login() => (super.noSuchMethod(
        Invocation.method(
          #login,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<dynamic> logOut() => (super.noSuchMethod(
        Invocation.method(
          #logOut,
          [],
        ),
        returnValue: _i7.Future<dynamic>.value(),
      ) as _i7.Future<dynamic>);
  @override
  bool isOnboardingCompleted() => (super.noSuchMethod(
        Invocation.method(
          #isOnboardingCompleted,
          [],
        ),
        returnValue: false,
      ) as bool);
  @override
  bool hasPhone() => (super.noSuchMethod(
        Invocation.method(
          #hasPhone,
          [],
        ),
        returnValue: false,
      ) as bool);
}

/// A class which mocks [GoogleAuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockGoogleAuthService extends _i1.Mock implements _i8.GoogleAuthService {
  MockGoogleAuthService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.HttpProvider get httpProvider => (super.noSuchMethod(
        Invocation.getter(#httpProvider),
        returnValue: _FakeHttpProvider_2(
          this,
          Invocation.getter(#httpProvider),
        ),
      ) as _i4.HttpProvider);
  @override
  _i7.Future<_i9.GoogleSignInAccount?> signIn() => (super.noSuchMethod(
        Invocation.method(
          #signIn,
          [],
        ),
        returnValue: _i7.Future<_i9.GoogleSignInAccount?>.value(),
      ) as _i7.Future<_i9.GoogleSignInAccount?>);
  @override
  _i7.Future<_i5.MyUser> getUserData() => (super.noSuchMethod(
        Invocation.method(
          #getUserData,
          [],
        ),
        returnValue: _i7.Future<_i5.MyUser>.value(_FakeMyUser_3(
          this,
          Invocation.method(
            #getUserData,
            [],
          ),
        )),
      ) as _i7.Future<_i5.MyUser>);
  @override
  _i7.Future<String> getIdToken() => (super.noSuchMethod(
        Invocation.method(
          #getIdToken,
          [],
        ),
        returnValue: _i7.Future<String>.value(''),
      ) as _i7.Future<String>);
  @override
  _i7.Future<_i9.GoogleSignInAccount?> signInSilently() => (super.noSuchMethod(
        Invocation.method(
          #signInSilently,
          [],
        ),
        returnValue: _i7.Future<_i9.GoogleSignInAccount?>.value(),
      ) as _i7.Future<_i9.GoogleSignInAccount?>);
  @override
  _i7.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<bool> sendPhoneNumber(String? phone) => (super.noSuchMethod(
        Invocation.method(
          #sendPhoneNumber,
          [phone],
        ),
        returnValue: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);
  @override
  _i7.Future<bool> sendDoneOnboarding(bool? doneOnboarding) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendDoneOnboarding,
          [doneOnboarding],
        ),
        returnValue: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);
}
