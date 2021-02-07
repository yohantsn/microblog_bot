import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/data/auth/auth_interface.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/domain/usecases/tools/verify_internet_interface.dart';
import 'package:mobx/mobx.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashController
    with _$SplashController;

abstract class _SplashController with Store{
  final IAuth auth = Modular.get();
  final IStorage storage = Modular.get();
  final IVerifyInternet verifyInternet = Modular.get();

  _SplashController(){
    verifyInternet.isConnected().then((value) {
      if(value){
        final uid = auth.getUid();
        if(uid != null && uid.isNotEmpty){
          storage.getUserModel(uid: uid).then((value){
            Modular.to.pushReplacementNamed("/home/", arguments: value);
          });
        }else{
          Future.delayed(Duration(seconds: 2)).then((value)
          =>  Modular.to.pushReplacementNamed("/login"));
        }
      }else{
        Modular.to.pushReplacementNamed("/error", arguments: value);
      }
    });

  }



}