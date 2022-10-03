// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/features/contacts/controller/friends_controller/friends_controller_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/domain/contact/contact.dart' as _i4;
import 'package:wayat/services/contact/contact_service.dart' as _i2;

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

/// A class which mocks [ContactService].
///
/// See the documentation for Mockito's code generation for more information.
class MockContactService extends _i1.Mock implements _i2.ContactService {
  MockContactService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Contact>> getAll() => (super.noSuchMethod(
        Invocation.method(
          #getAll,
          [],
        ),
        returnValue: _i3.Future<List<_i4.Contact>>.value(<_i4.Contact>[]),
      ) as _i3.Future<List<_i4.Contact>>);
  @override
  _i3.Future<void> sendRequests(List<_i4.Contact>? contacts) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendRequests,
          [contacts],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<List<_i4.Contact>> getFilteredContacts(
          List<String>? importedContacts) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFilteredContacts,
          [importedContacts],
        ),
        returnValue: _i3.Future<List<_i4.Contact>>.value(<_i4.Contact>[]),
      ) as _i3.Future<List<_i4.Contact>>);
  @override
  _i3.Future<bool> removeContact(_i4.Contact? contact) => (super.noSuchMethod(
        Invocation.method(
          #removeContact,
          [contact],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
}
