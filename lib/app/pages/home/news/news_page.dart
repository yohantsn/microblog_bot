import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/news/news_controller.dart';
import 'package:micro_blog_bot/app/widgets/cards/card_feed.dart';
import 'package:micro_blog_bot/app/widgets/screen/default_screen.dart';
import 'package:micro_blog_bot/app/widgets/text/text_post.dart';
import 'package:micro_blog_bot/app/widgets/text/text_small.dart';
import 'package:shimmer/shimmer.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends ModularState<NewsPage, NewsController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      showAppBar: true,
      title: "News",
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
        itemCount: store.listNews.length,
        itemBuilder: (context, index) {
          return store.listNews == null || store.listNews.isEmpty
              ? Center(child: TextSmall(text: "Ainda não há nada para ver aqui."),)
              : Column(
            children: [
              CardFeed(
                textPost: store.listNews[index].message.content,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                child: Row(children: [
                  ClipOval(
                      child: Image.network(
                        store.listNews[index].user.profilePicture,
                        width: 30,
                        height: 30,
                        fit: BoxFit.fill,
                        errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
                          return Image.asset("images/user.png", height: 30, width: 30, fit: BoxFit.fill,);
                        },
                      )
                  ),
                  Expanded(child: TextHeaderPost(
                    text:
                    "${store.listNews[index].user.name} postou, no dia "
                        "${store.listNews[index].message.createdAt.day}/"
                        "${store.listNews[index].message.createdAt.month}/"
                        "${store.listNews[index].message.createdAt.year}"
                        " ás ${store.listNews[index].message.createdAt.hour}:${store.listNews[index].message.createdAt.minute}",
                  ),),
                ],),
              )
            ],
          );
        },
      );
    },
    ))
    );
  }
}
