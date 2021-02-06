// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_post_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewPostController on _NewPostController, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_NewPostController.isValid'))
      .value;

  final _$postModelAtom = Atom(name: '_NewPostController.postModel');

  @override
  PostModel get postModel {
    _$postModelAtom.reportRead();
    return super.postModel;
  }

  @override
  set postModel(PostModel value) {
    _$postModelAtom.reportWrite(value, super.postModel, () {
      super.postModel = value;
    });
  }

  final _$counterLettersAtom = Atom(name: '_NewPostController.counterLetters');

  @override
  int get counterLetters {
    _$counterLettersAtom.reportRead();
    return super.counterLetters;
  }

  @override
  set counterLetters(int value) {
    _$counterLettersAtom.reportWrite(value, super.counterLetters, () {
      super.counterLetters = value;
    });
  }

  final _$postTextAtom = Atom(name: '_NewPostController.postText');

  @override
  String get postText {
    _$postTextAtom.reportRead();
    return super.postText;
  }

  @override
  set postText(String value) {
    _$postTextAtom.reportWrite(value, super.postText, () {
      super.postText = value;
    });
  }

  final _$isEdittedAtom = Atom(name: '_NewPostController.isEditted');

  @override
  bool get isEditted {
    _$isEdittedAtom.reportRead();
    return super.isEditted;
  }

  @override
  set isEditted(bool value) {
    _$isEdittedAtom.reportWrite(value, super.isEditted, () {
      super.isEditted = value;
    });
  }

  final _$_NewPostControllerActionController =
      ActionController(name: '_NewPostController');

  @override
  void onChangedPost(String value) {
    final _$actionInfo = _$_NewPostControllerActionController.startAction(
        name: '_NewPostController.onChangedPost');
    try {
      return super.onChangedPost(value);
    } finally {
      _$_NewPostControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void savePost() {
    final _$actionInfo = _$_NewPostControllerActionController.startAction(
        name: '_NewPostController.savePost');
    try {
      return super.savePost();
    } finally {
      _$_NewPostControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
postModel: ${postModel},
counterLetters: ${counterLetters},
postText: ${postText},
isEditted: ${isEditted},
isValid: ${isValid}
    ''';
  }
}
