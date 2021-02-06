import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/new_post/new_post_controller.dart';
import 'package:micro_blog_bot/app/widgets/buttons/button_principal.dart';
import 'package:micro_blog_bot/app/widgets/text/text_big.dart';
import 'package:micro_blog_bot/app/widgets/text/text_medium.dart';
import 'package:micro_blog_bot/app/widgets/text/text_small.dart';
import 'package:micro_blog_bot/app/widgets/text_fields/new_post_text_field.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';

class WelcomePage extends StatefulWidget {
  final UserModel userModel;
  WelcomePage(this.userModel);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final controllerPost = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child:  Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                          child: TextBig(text: "Seja bem vindo!"),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                          child: Image.asset(
                            "images/news.jpg",
                            height: MediaQuery.of(context).size.height * .3,
                            width: MediaQuery.of(context).size.width * 0.9,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: TextMedium(
                                text: "Aqui você pode compartilhar suas ideias com a galera, "
                                    "e ainda conhecer todas as novidades da boticário. "
                                    "Tudo em um só app!!"
                            ),
                          )
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                          child: Image.asset(
                            "images/logo_bot.png",
                            height: MediaQuery.of(context).size.height * .05,
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ButtonPrincipal(
                    text: "Vamos lá",
                    onPressed: ()=> Modular.to.popAndPushNamed("/home/", arguments: widget.userModel)),
              ),
            ])
    ));
  }
}
