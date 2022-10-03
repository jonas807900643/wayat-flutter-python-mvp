// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/features/onboarding/widgets/selected_contacts_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mobx/mobx.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/domain/contact/contact.dart' as _i8;
import 'package:wayat/features/onboarding/controller/onboarding_controller.dart'
    as _i5;
import 'package:wayat/features/onboarding/controller/onboarding_progress.dart'
    as _i7;
import 'package:wayat/features/onboarding/controller/onboarding_state.dart'
    as _i6;
import 'package:wayat/services/contact/contact_service.dart' as _i3;
import 'package:wayat/services/contact/import_phones_service_impl.dart' as _i2;

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

class _FakeContactsAddressServiceImpl_0 extends _i1.SmartFake
    implements _i2.ContactsAddressServiceImpl {
  _FakeContactsAddressServiceImpl_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeContactService_1 extends _i1.SmartFake
    implements _i3.ContactService {
  _FakeContactService_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeObservableMap_2<K, V> extends _i1.SmartFake
    implements _i4.ObservableMap<K, V> {
  _FakeObservableMap_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeReactiveContext_3 extends _i1.SmartFake
    implements _i4.ReactiveContext {
  _FakeReactiveContext_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [OnboardingController].
///
/// See the documentation for Mockito's code generation for more information.
class MockOnboardingController extends _i1.Mock
    implements _i5.OnboardingController {
  MockOnboardingController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ContactsAddressServiceImpl get importContactService =>
      (super.noSuchMethod(
        Invocation.getter(#importContactService),
        returnValue: _FakeContactsAddressServiceImpl_0(
          this,
          Invocation.getter(#importContactService),
        ),
      ) as _i2.ContactsAddressServiceImpl);
  @override
  _i3.ContactService get contactService => (super.noSuchMethod(
        Invocation.getter(#contactService),
        returnValue: _FakeContactService_1(
          this,
          Invocation.getter(#contactService),
        ),
      ) as _i3.ContactService);
  @override
  _i6.OnBoardingState get onBoardingState => (super.noSuchMethod(
        Invocation.getter(#onBoardingState),
        returnValue: _i6.OnBoardingState.notStarted,
      ) as _i6.OnBoardingState);
  @override
  set onBoardingState(_i6.OnBoardingState? value) => super.noSuchMethod(
        Invocation.setter(
          #onBoardingState,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.OnBoardingProgress get currentPage => (super.noSuchMethod(
        Invocation.getter(#currentPage),
        returnValue: _i7.OnBoardingProgress.initialManageContactsTip,
      ) as _i7.OnBoardingProgress);
  @override
  set currentPage(_i7.OnBoardingProgress? value) => super.noSuchMethod(
        Invocation.setter(
          #currentPage,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.ObservableMap<_i8.Contact, bool> get contacts => (super.noSuchMethod(
        Invocation.getter(#contacts),
        returnValue: _FakeObservableMap_2<_i8.Contact, bool>(
          this,
          Invocation.getter(#contacts),
        ),
      ) as _i4.ObservableMap<_i8.Contact, bool>);
  @override
  set contacts(_i4.ObservableMap<_i8.Contact, bool>? value) =>
      super.noSuchMethod(
        Invocation.setter(
          #contacts,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  List<_i8.Contact> get contactList => (super.noSuchMethod(
        Invocation.getter(#contactList),
        returnValue: <_i8.Contact>[],
      ) as List<_i8.Contact>);
  @override
  List<_i8.Contact> get selectedContacts => (super.noSuchMethod(
        Invocation.getter(#selectedContacts),
        returnValue: <_i8.Contact>[],
      ) as List<_i8.Contact>);
  @override
  List<_i8.Contact> get unselectedContacts => (super.noSuchMethod(
        Invocation.getter(#unselectedContacts),
        returnValue: <_i8.Contact>[],
      ) as List<_i8.Contact>);
  @override
  _i4.ReactiveContext get context => (super.noSuchMethod(
        Invocation.getter(#context),
        returnValue: _FakeReactiveContext_3(
          this,
          Invocation.getter(#context),
        ),
      ) as _i4.ReactiveContext);
  @override
  void importContacts() => super.noSuchMethod(
        Invocation.method(
          #importContacts,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool isSelected(_i8.Contact? contact) => (super.noSuchMethod(
        Invocation.method(
          #isSelected,
          [contact],
        ),
        returnValue: false,
      ) as bool);
  @override
  void finishOnBoarding() => super.noSuchMethod(
        Invocation.method(
          #finishOnBoarding,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void progressTo(_i7.OnBoardingProgress? newPage) => super.noSuchMethod(
        Invocation.method(
          #progressTo,
          [newPage],
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool moveBack() => (super.noSuchMethod(
        Invocation.method(
          #moveBack,
          [],
        ),
        returnValue: false,
      ) as bool);
  @override
  void updateSelected(_i8.Contact? contact) => super.noSuchMethod(
        Invocation.method(
          #updateSelected,
          [contact],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addAll(List<_i8.Contact>? contactList) => super.noSuchMethod(
        Invocation.method(
          #addAll,
          [contactList],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void setOnBoardingState(_i6.OnBoardingState? state) => super.noSuchMethod(
        Invocation.method(
          #setOnBoardingState,
          [state],
        ),
        returnValueForMissingStub: null,
      );
}
