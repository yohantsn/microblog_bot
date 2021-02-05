
import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/home_module.dart';
import 'package:micro_blog_bot/app/pages/login/login_module.dart';
import 'package:micro_blog_bot/app/pages/signup/signup_module.dart';
import 'package:micro_blog_bot/app/pages/splash/splash_module.dart';
import 'package:micro_blog_bot/data/auth/auth_firebase.dart';
import 'package:micro_blog_bot/data/auth/auth_interface.dart';
import 'package:micro_blog_bot/data/repositorie/storage_firebase.dart';
import 'package:micro_blog_bot/data/repositorie/storage_interface.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';

import 'app_widget.dart';

class AppModule extends MainModule {

  @override
  final List<Bind> binds = [
    Bind<IAuth>((i) => AuthFirebase()),
    Bind<IStorage>((i) => StorageFirebase()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute("/", module: SplashModule()),
    ModuleRoute("/home", module: HomeModule()),
    ModuleRoute("/login", module: LoginModule()),
    ModuleRoute("/signUp", module: SignUpModule()),
  ];

  @override
  final Widget bootstrap = AppWidget();
}