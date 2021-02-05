import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/splash/splash_controller.dart';
import 'package:micro_blog_bot/app/pages/splash/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => SplashController())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
        "/",
        child: (_, args) => SplashPage(),
    ),
  ];

}