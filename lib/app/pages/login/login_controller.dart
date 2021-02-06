import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/data/auth/auth_interface.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final IAuth auth = Modular.get();
  final IStorage storage = Modular.get();

  @observable
  String errorPass = "";

  @observable
  String errorEmail = "";

  @observable
  String email = "";

  @observable
  String password = "";

  @observable
  bool isLoading = false;

  @computed
  bool get isValid =>
      errorPass.isEmpty &&
      errorEmail.isEmpty &&
      email.isNotEmpty &&
      password.isNotEmpty;

  @action
  void onChangedEmail(String value) {
    email = value;
    if (value.isEmpty) {
      errorEmail = "E-mail não pode ser vazio";
    } else {
      errorEmail = "";
    }
  }

  @action
  void onChangedPass(String value) {
    password = value;
    if (value.isEmpty) {
      errorPass = "Senha não pode ser vazia";
    } else {
      errorPass = "";
    }
  }

  @action
  Future<void> login() async {
    isLoading = true;
    final result =
        await auth.authSignAccountEmail(email: email, password: password);
    if (result.containsKey("error")) {
      errorPass = result["errorMsg"];
      isLoading = false;
      return;
    }

    final userModel = await storage.getUserModel(uid: result["uid"]);
    isLoading = false;
    Modular.to.pushReplacementNamed("/home/", arguments: userModel);
  }
}
