// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginController, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??=
          Computed<bool>(() => super.isValid, name: '_LoginController.isValid'))
      .value;

  final _$errorPassAtom = Atom(name: '_LoginController.errorPass');

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

  final _$errorEmailAtom = Atom(name: '_LoginController.errorEmail');

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

  final _$emailAtom = Atom(name: '_LoginController.email');

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

  final _$passwordAtom = Atom(name: '_LoginController.password');

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

  final _$isLoadingAtom = Atom(name: '_LoginController.isLoading');

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

  final _$loginAsyncAction = AsyncAction('_LoginController.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_LoginControllerActionController =
      ActionController(name: '_LoginController');

  @override
  void onChangedEmail(String value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.onChangedEmail');
    try {
      return super.onChangedEmail(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangedPass(String value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.onChangedPass');
    try {
      return super.onChangedPass(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
errorPass: ${errorPass},
errorEmail: ${errorEmail},
email: ${email},
password: ${password},
isLoading: ${isLoading},
isValid: ${isValid}
    ''';
  }
}
