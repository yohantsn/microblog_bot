
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/home_module.dart';
import 'package:micro_blog_bot/data/auth/auth_firebase.dart';
import 'package:micro_blog_bot/data/auth/auth_interface.dart';
import 'package:micro_blog_bot/data/repositorie/storage_firebase.dart';
import 'package:micro_blog_bot/data/repositorie/storage_interface.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';

import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind<IAuth>((_) => AuthFirebase()),
    Bind<IStorage>((_) => StorageFirebase()),
  ];


  @override
  List<ModularRoute> get routers => [
    ModuleRoute("/", module: HomeModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}