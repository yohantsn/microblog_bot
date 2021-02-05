import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/data/auth/auth_interface.dart';
import 'package:micro_blog_bot/data/repositorie/storage_interface.dart';
import 'package:mobx/mobx.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashController
    with _$SplashController;

abstract class _SplashController with Store{
  IAuth auth = Modular.get();
  IStorage storage = Modular.get();

  _SplashController(){
    final uid = auth.getUid();
    if(uid != null && uid.isNotEmpty){
      storage.getUserModel(uid: uid).then((value){
        Modular.to.pushReplacementNamed("/home/", arguments: value);
      });
    }else{
      Future.delayed(Duration(seconds: 2)).then((value)
      =>  Modular.to.pushReplacementNamed("/login"));
    }
  }



}