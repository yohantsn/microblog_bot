import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';

import 'login_controller.dart';
import 'login_page.dart';

class LoginModule extends ChildModule {

  @override
  List<Bind> get binds => [
    Bind((i) => LoginController())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      "/",
      child: (_, args) => LoginPage(),
    ),
  ];

}