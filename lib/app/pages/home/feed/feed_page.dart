import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/feed/feed_controller.dart';
import 'package:micro_blog_bot/app/widgets/app_bar/gradient_bar.dart';
import 'package:micro_blog_bot/app/widgets/screen/default_screen.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends ModularState<FeedPage, FeedController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: "Feed",
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFF5821F),
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: Container(),
    );
  }
}
