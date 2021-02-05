// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_content.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BaseContent on _BaseContent, Store {
  final _$userModelAtom = Atom(name: '_BaseContent.userModel');

  @override
  UserModel get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(UserModel value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  final _$_BaseContentActionController = ActionController(name: '_BaseContent');

  @override
  void setUserModel(UserModel userModel) {
    final _$actionInfo = _$_BaseContentActionController.startAction(
        name: '_BaseContent.setUserModel');
    try {
      return super.setUserModel(userModel);
    } finally {
      _$_BaseContentActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userModel: ${userModel}
    ''';
  }
}
