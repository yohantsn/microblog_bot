import 'package:firebase_auth/firebase_auth.dart';
import 'package:micro_blog_bot/data/auth/auth_interface.dart';

class AuthFirebase implements IAuth{
  FirebaseAuth auth;
  AuthFirebase() {
    this.auth = FirebaseAuth.instance;
  }

  @override
  Future<Map> authCreateAccountEmail({String email, String password}) async{
    Map<String, dynamic> _map = <String,dynamic>{};
    try{
      UserCredential userCredential = await this
          .auth
          .createUserWithEmailAndPassword(email: email, password: password);
      _map["isSucess"] = true;
      _map["uid"] = userCredential.user.uid;
    }on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        _map["errorMSg"] =
            "A senha é muito fraca, tente informar letras e números.";
      } else if (e.code == 'email-already-in-use') {
        _map["errorMSg"] =
          "Email ja cadastrado.";
      } else {
        _map["errorMSg"] =
        "Email ja cadastrado.";
      }
      return _map;
    } catch (e) {
      _map["errorMSg"] =
      "Servidor feio!!! Desculpe tivemos um erro inesperado, por favor, tente novamente.";
      return _map;
    }
  }

  @override
  Future<Map> authSignAccountEmail({String email, String password}) async {
    Map<String, dynamic> _map = <String,dynamic>{};
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      _map["isSucess"] = true;
      _map["uid"] = userCredential.user.uid;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        _map["errorMSg"] =
        "Usuario não encontrado.";
      } else if (e.code == 'wrong-password') {
        _map["errorMSg"] =
        "Usuário ou senhas incorretos.";
      } else {
        _map["errorMSg"] =
        "Usuário ou senhas incorretos.";
      }
    }
    return _map;
  }

  @override
  String getUid() {
    if(auth.currentUser != null){
      return auth.currentUser.uid;
    }else{
      return "";
    }
  }

  @override
  bool isLogged() {
    return auth.currentUser.uid.isNotEmpty;
  }

  @override
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
  
}