import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/news/news_controller.dart';
import 'package:micro_blog_bot/app/widgets/screen/default_screen.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends ModularState<NewsPage, NewsController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: "News",
      body: Container(),
    );
  }
}
