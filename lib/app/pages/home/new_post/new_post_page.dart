import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/new_post/new_post_controller.dart';
import 'package:micro_blog_bot/app/widgets/buttons/button_principal.dart';
import 'package:micro_blog_bot/app/widgets/text/text_big.dart';
import 'package:micro_blog_bot/app/widgets/text/text_small.dart';
import 'package:micro_blog_bot/app/widgets/text_fields/new_post_text_field.dart';

class NewPostPage extends StatefulWidget {
  @override
  _NewPostPageState createState() => _NewPostPageState();
}

class _NewPostPageState extends ModularState<NewPostPage, NewPostController> {
  final controllerPost = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(
                    onPressed: () {
                      Modular.to.pop();
                    },
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                        child: Image.asset(
                          "images/hashtag.jpg",
                          height: MediaQuery.of(context).size.height * .3,
                          width: MediaQuery.of(context).size.width * 0.9,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                        child: TextBig(text: "No que você está pensando?"),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: TextSmall(text: "Utilize o campo abaixo para compartilhar novidades e pensamentos com a galera!!!"),
                      ),
                      Observer(
                        builder: (_) {
                          if(!store.isEditted && store.postModel != null){
                            controllerPost.text = store.postText;
                          }
                          return NewPostTextField(
                            controller: controllerPost,
                            hint: "Digite aqui as novidades e pensamentos",
                            maxText: 280,
                            textInfo:
                            "Você ainda pode escrever ${store.counterLetters} caracteres",
                            onChanged: store.onChangedPost,
                          );
                          }
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(20),
              child: Observer(
                builder: (_) => ButtonPrincipal(
                    text: "Entrar",
                    onPressed: store.isValid ? store.savePost : null),
              ),
            ),
          ])
    ));
  }
}
