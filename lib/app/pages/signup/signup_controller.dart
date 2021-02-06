import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/data/auth/auth_interface.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';
import 'package:mobx/mobx.dart';
part 'signup_controller.g.dart';

class SignUpController = _SignUpController
    with _$SignUpController;

abstract class _SignUpController with Store{

  final IAuth auth = Modular.get();
  final IStorage storage = Modular.get();

  @observable
  String errorPass = "";

  @observable
  String errorConfPass = "";

  @observable
  String errorEmail = "";

  @observable
  String errorName = "";

  @observable
  String email = "";

  @observable
  String password = "";

  @observable
  String name = "";

  @observable
  bool isLoading = false;

  @computed
  bool get isValid => errorPass.isEmpty
      && errorEmail.isEmpty
      && errorConfPass.isEmpty
      && errorName.isEmpty
      && name.isNotEmpty
      && email.isNotEmpty
      && password.isNotEmpty;

  @action
  void onChangedEmail(String value){
    email = value;
    if(value.isEmpty){
      errorEmail = "E-mail não pode ser vazio";
    }else{
      errorEmail = "";
    }
  }

  @action
  void onChangedName(String value){
    name = value;
    if(value.isEmpty){
      errorName = "Nome não pode ser vazio";
    }else{
      errorName = "";
    }
  }

  @action
  void onChangedPass(String value){
    password = value;
    if(value.isEmpty){
      errorPass = "Senha não pode ser vazia";
    }else{
      if(value.length<8){
        errorPass = "Senha deve conter no mínimo 8 caracteres";
      }else {
        errorPass = "";
      }
    }
  }

  @action
  void onChangedConfPass(String value){
    if(value.isEmpty){
      errorConfPass = "Confirmação da senha não pode ser vazia";
    }else{
      if(value != password){
        errorConfPass = "Não confere com a senha digitada";
      }else {
        errorConfPass = "";
      }
    }
  }

  @action
  Future<void> save() async {
    isLoading = true;
    final result = await auth.authCreateAccountEmail(email: email,
        password: password);
    if(result.containsKey("error")){
      if(result.containsKey("pass")) {
        errorPass = result["errorPassMsg"];
      }else{
        errorPass = result["errorMsg"];
      }
      isLoading = false;
      return;
    }
    final userModel = UserModel(nameUser: name, emailUser: email, uidUser: result["uid"]);
    await storage.saveUser(userModel: userModel);
    isLoading = false;
    Modular.to.pushReplacementNamed("/home/", arguments: userModel);
  }
}