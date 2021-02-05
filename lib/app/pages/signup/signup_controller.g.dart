// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpController on _SignUpController, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_SignUpController.isValid'))
      .value;

  final _$errorPassAtom = Atom(name: '_SignUpController.errorPass');

  @override
  String get errorPass {
    _$errorPassAtom.reportRead();
    return super.errorPass;
  }

  @override
  set errorPass(String value) {
    _$errorPassAtom.reportWrite(value, super.errorPass, () {
      super.errorPass = value;
    });
  }

  final _$errorConfPassAtom = Atom(name: '_SignUpController.errorConfPass');

  @override
  String get errorConfPass {
    _$errorConfPassAtom.reportRead();
    return super.errorConfPass;
  }

  @override
  set errorConfPass(String value) {
    _$errorConfPassAtom.reportWrite(value, super.errorConfPass, () {
      super.errorConfPass = value;
    });
  }

  final _$errorEmailAtom = Atom(name: '_SignUpController.errorEmail');

  @override
  String get errorEmail {
    _$errorEmailAtom.reportRead();
    return super.errorEmail;
  }

  @override
  set errorEmail(String value) {
    _$errorEmailAtom.reportWrite(value, super.errorEmail, () {
      super.errorEmail = value;
    });
  }

  final _$errorNameAtom = Atom(name: '_SignUpController.errorName');

  @override
  String get errorName {
    _$errorNameAtom.reportRead();
    return super.errorName;
  }

  @override
  set errorName(String value) {
    _$errorNameAtom.reportWrite(value, super.errorName, () {
      super.errorName = value;
    });
  }

  final _$emailAtom = Atom(name: '_SignUpController.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignUpController.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$nameAtom = Atom(name: '_SignUpController.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_SignUpController.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$saveAsyncAction = AsyncAction('_SignUpController.save');

  @override
  Future<void> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  final _$_SignUpControllerActionController =
      ActionController(name: '_SignUpController');

  @override
  void onChangedEmail(String value) {
    final _$actionInfo = _$_SignUpControllerActionController.startAction(
        name: '_SignUpController.onChangedEmail');
    try {
      return super.onChangedEmail(value);
    } finally {
      _$_SignUpControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangedName(String value) {
    final _$actionInfo = _$_SignUpControllerActionController.startAction(
        name: '_SignUpController.onChangedName');
    try {
      return super.onChangedName(value);
    } finally {
      _$_SignUpControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangedPass(String value) {
    final _$actionInfo = _$_SignUpControllerActionController.startAction(
        name: '_SignUpController.onChangedPass');
    try {
      return super.onChangedPass(value);
    } finally {
      _$_SignUpControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangedConfPass(String value) {
    final _$actionInfo = _$_SignUpControllerActionController.startAction(
        name: '_SignUpController.onChangedConfPass');
    try {
      return super.onChangedConfPass(value);
    } finally {
      _$_SignUpControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
errorPass: ${errorPass},
errorConfPass: ${errorConfPass},
errorEmail: ${errorEmail},
errorName: ${errorName},
email: ${email},
password: ${password},
name: ${name},
isLoading: ${isLoading},
isValid: ${isValid}
    ''';
  }
}
