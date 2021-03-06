import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/feed/feed_controller.dart';
import 'package:micro_blog_bot/app/pages/home/feed/feed_page.dart';
import 'package:micro_blog_bot/app/pages/home/home_page.dart';
import 'package:micro_blog_bot/app/pages/home/new_post/new_post_controller.dart';
import 'package:micro_blog_bot/app/pages/home/new_post/new_post_page.dart';
import 'package:micro_blog_bot/app/pages/home/news/news_controller.dart';
import 'package:micro_blog_bot/app/pages/home/news/news_page.dart';
import 'package:micro_blog_bot/app/pages/home/profile/profile_controller.dart';
import 'package:micro_blog_bot/app/pages/home/profile/profile_page.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';

import 'home_controller.dart';

class HomeModule extends ChildModule {
  BaseContent baseContent = BaseContent();
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => baseContent),
    Bind((i) => HomeController(i.args.data)),
    Bind((i) => NewsController()),
    Bind((i) => FeedController(),),
    Bind((i) => ProfileController(),),
    Bind((i) => NewPostController(i.args.data),)
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      "/",
      child: (_, args) => HomePage(),
      children: [
        ChildRoute('/feed', child: (_, __) => FeedPage()),
        ChildRoute('/news', child: (_, __) => NewsPage()),
        ChildRoute('/profile', child: (_, __) => ProfilePage()),
      ]
    ),
    ChildRoute('/new_post', child: (_, __) => NewPostPage()),
  ];

}