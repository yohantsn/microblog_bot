import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/home_module.dart';
import 'package:micro_blog_bot/app/widgets/bottom_navigation/bottom_navigation.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    super.initState();
    store.onItemTapped(0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Observer(
        builder: (_){
          return bottomBarWidget(onItemTapped: store.onItemTapped, selectedIndex: store.selectedIndex);
        },
      ),
      body: RouterOutlet(),
    );
  }
}
