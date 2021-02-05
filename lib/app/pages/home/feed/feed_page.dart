import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/feed/feed_controller.dart';
import 'package:micro_blog_bot/app/widgets/cards/card_feed.dart';
import 'package:micro_blog_bot/app/widgets/screen/default_screen.dart';
import 'package:micro_blog_bot/app/widgets/text/text_post.dart';
import 'package:shimmer/shimmer.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends ModularState<FeedPage, FeedController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
        showAppBar: true,
        title: "Feed",
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFF5821F),
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        body: Expanded(child: Observer(
          builder: (_) {
            return store.isLoading ? Shimmer(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CardFeed(
                        textPost: "",
                      ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(""),)
                    ],
                  );
                },
              ),
              gradient: LinearGradient(colors: [Color(0xFFa3a3a3),
                Color(0xFFcccccc),
                Color(0xFFeeeeee),
                Colors.white]),
            )
            :ListView.builder(
              itemCount: store.posts.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CardFeed(
                      textPost: store.posts[index].txtPost,
                    ),
                    TextHeaderPost(
                      text:
                      "${store.posts[index].userNamePost} postou, no dia "
                          "${store.posts[index].datePost.day}/"
                          "${store.posts[index].datePost.month}/"
                          "${store.posts[index].datePost.year}"
                          " ás ${store.posts[index].datePost.hour}:${store.posts[index].datePost.minute}",
                    ),
                  ],
                );
              },
            );
          },
        )));
  }
}
