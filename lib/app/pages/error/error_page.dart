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

class ErrorPage extends StatefulWidget {
  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
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
                          padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                          child: TextBig(text: "Houston, temos um problema!"),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
                          child: Image.asset(
                            "images/error.jpg",
                            height: MediaQuery.of(context).size.height * .3,
                            width: MediaQuery.of(context).size.width * 0.9,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: TextMedium(
                                text: "Não foi possível acessar nossos "
                                    "servidores, por favor, verifique sua "
                                    "conexão e tente novamente"
                            ),
                          )
                        ),
                      ],
                    ),
                  ),

            ])
    ));
  }
}
