import 'package:flutter_modular/flutter_modular.dart';


import 'error_page.dart';


class ErrorModule extends ChildModule {

  @override
  List<Bind> get binds => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
        "/",
        child: (_, args) => ErrorPage(),
    ),
  ];

}