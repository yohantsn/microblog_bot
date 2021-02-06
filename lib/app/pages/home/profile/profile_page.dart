import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/profile/profile_controller.dart';
import 'package:micro_blog_bot/app/widgets/cards/card_feed.dart';
import 'package:micro_blog_bot/app/widgets/screen/default_screen.dart';
import 'package:micro_blog_bot/app/widgets/text/text_post.dart';
import 'package:micro_blog_bot/app/widgets/text/text_small.dart';
import 'package:micro_blog_bot/domain/models/post_model.dart';
import 'package:shimmer/shimmer.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      showAppBar: true,
      title: "Meus Posts",
      body: Expanded(child: Observer(
        builder: (_) {
          return StreamBuilder<QuerySnapshot>(
              stream: store.snapshotPosts,
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                if(snapshot.hasError){
                  return Container();
                }

                if(snapshot.connectionState == ConnectionState.waiting){
                  return Shimmer(
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
                  );
                }

                return ListView(
                  children: snapshot.data.docs.map((DocumentSnapshot document){
                    final postModel = PostModel.fromJson(document.data());
                    if(postModel.uid == store.userModel.uidUser) {
                      return Column(
                        children: [
                          GestureDetector(
                            child: CardFeed(
                              textPost: postModel.txtPost,
                            ),
                            onTap: (){
                              store.editPost(document);
                              Modular.to.pushNamed("/home/new_post", arguments: postModel);
                            },
                          ),
                          TextHeaderPost(
                            text:
                            "${postModel.uid == store.userModel.uidUser ? "Você" : postModel.userNamePost} postou, no dia "
                                "${postModel.datePost.day}/"
                                "${postModel.datePost.month}/"
                                "${postModel.datePost.year}"
                                " ás ${postModel.datePost.hour}:${postModel
                                .datePost.minute}",
                          ),
                        ],
                      );
                    }else{
                      return Container();
                    }
                  }).toList(),
                );
              });
        },
      ))
    );
  }
}
