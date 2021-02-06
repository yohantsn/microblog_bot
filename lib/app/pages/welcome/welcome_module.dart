import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/welcome/welcome_page.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';


class WelcomeModule extends ChildModule {
  BaseContent baseContent = BaseContent();
  @override
  List<Bind> get binds => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
        "/",
        child: (_, args) => WelcomePage(args.data),
    ),
  ];

}