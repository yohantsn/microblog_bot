import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/home_page.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';

import 'home_controller.dart';

class HomeModule extends ChildModule {
  BaseContent baseContent = BaseContent();
  @override
  List<Bind> get binds => [
    Bind((i) => baseContent, singleton: true),
    Bind((i) => HomeController()),
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter('/', child: (_, args) => HomePage()),
  ];

  static Inject get to => Inject<HomeModule>.of();
}