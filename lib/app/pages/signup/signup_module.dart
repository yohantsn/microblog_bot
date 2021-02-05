import 'package:flutter_modular/flutter_modular.dart';

import 'signup_controller.dart';
import 'signup_page.dart';

class SignUpModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => SignUpController())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      "/",
      child: (_, args) => SignUpPage(),
    ),
  ];

}