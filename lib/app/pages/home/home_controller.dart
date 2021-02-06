import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController
    with _$HomeController;

abstract class _HomeController with Store{
  IStorage storage = Modular.get();
  BaseContent baseContent = Modular.get();

  _HomeController(this.userModel){
    baseContent.setUserModel(userModel);
  }

  @observable
  UserModel userModel;

  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index) {
    selectedIndex = index;
    if(index == 0){
      Modular.to.navigate("/home/news");
    }else if(index == 1){
      Modular.to.navigate("/home/feed");
    }else if(index == 2){
      Modular.to.navigate("/home/profile");
    }
  }


}