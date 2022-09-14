// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/features/groups/pages/groups_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:image_picker/image_picker.dart' as _i7;
import 'package:mobx/mobx.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/domain/group/group.dart' as _i5;
import 'package:wayat/features/groups/controllers/groups_controller/groups_controller.dart'
    as _i4;
import 'package:wayat/services/groups/groups_service.dart' as _i2;

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

class _FakeGroupsService_0 extends _i1.SmartFake implements _i2.GroupsService {
  _FakeGroupsService_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeObservableList_1<T> extends _i1.SmartFake
    implements _i3.ObservableList<T> {
  _FakeObservableList_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_2 extends _i1.SmartFake
    implements _i3.ReactiveContext {
  _FakeReactiveContext_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [GroupsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockGroupsController extends _i1.Mock implements _i4.GroupsController {
  MockGroupsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GroupsService get groupsService =>
      (super.noSuchMethod(Invocation.getter(#groupsService),
              returnValue:
                  _FakeGroupsService_0(this, Invocation.getter(#groupsService)))
          as _i2.GroupsService);
  @override
  set groupsService(_i2.GroupsService? _groupsService) =>
      super.noSuchMethod(Invocation.setter(#groupsService, _groupsService),
          returnValueForMissingStub: null);
  @override
  _i3.ObservableList<_i5.Group> get groups => (super.noSuchMethod(
      Invocation.getter(#groups),
      returnValue: _FakeObservableList_1<_i5.Group>(
          this, Invocation.getter(#groups))) as _i3.ObservableList<_i5.Group>);
  @override
  set groups(_i3.ObservableList<_i5.Group>? value) =>
      super.noSuchMethod(Invocation.setter(#groups, value),
          returnValueForMissingStub: null);
  @override
  set selectedGroup(_i5.Group? value) =>
      super.noSuchMethod(Invocation.setter(#selectedGroup, value),
          returnValueForMissingStub: null);
  @override
  _i3.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_2(this, Invocation.getter(#context)))
          as _i3.ReactiveContext);
  @override
  _i6.Future<bool> updateGroups() =>
      (super.noSuchMethod(Invocation.method(#updateGroups, []),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  void setGroups(List<_i5.Group>? groups) =>
      super.noSuchMethod(Invocation.method(#setGroups, [groups]),
          returnValueForMissingStub: null);
  @override
  _i6.Future<dynamic> createGroup(_i5.Group? group, _i7.XFile? picture) =>
      (super.noSuchMethod(Invocation.method(#createGroup, [group, picture]),
          returnValue: _i6.Future<dynamic>.value()) as _i6.Future<dynamic>);
  @override
  void setSelectedGroup(_i5.Group? group) =>
      super.noSuchMethod(Invocation.method(#setSelectedGroup, [group]),
          returnValueForMissingStub: null);
}

/// A class which mocks [GroupsService].
///
/// See the documentation for Mockito's code generation for more information.
class MockGroupsService extends _i1.Mock implements _i2.GroupsService {
  MockGroupsService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<_i5.Group>> getAll() =>
      (super.noSuchMethod(Invocation.method(#getAll, []),
              returnValue: _i6.Future<List<_i5.Group>>.value(<_i5.Group>[]))
          as _i6.Future<List<_i5.Group>>);
  @override
  _i6.Future<dynamic> create(_i5.Group? group, _i7.XFile? picture) =>
      (super.noSuchMethod(Invocation.method(#create, [group, picture]),
          returnValue: _i6.Future<dynamic>.value()) as _i6.Future<dynamic>);
}
