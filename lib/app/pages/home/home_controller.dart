import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController
    with _$HomeController;

abstract class _HomeController with Store{

  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index) {
    selectedIndex = index;
    if(index == 0){
      Modular.to.navigate("/news");
    }else if(index == 1){
      Modular.to.navigate("/feed");
    }else if(index == 2){
      Modular.to.navigate("/profile");
    }
  }


}