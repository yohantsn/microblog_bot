import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/login/login_controller.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';
import 'package:micro_blog_bot/app/widgets/buttons/button_principal.dart';
import 'package:micro_blog_bot/app/widgets/text/text_big.dart';
import 'package:micro_blog_bot/app/widgets/text/text_small.dart';
import 'package:micro_blog_bot/app/widgets/text_fields/principal_text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Observer(builder: (_) {
      return store.isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : SingleChildScrollView(
          child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: Image.asset(
                        "images/social.jpg",
                        height: MediaQuery.of(context).size.height * .3,
                        width: MediaQuery.of(context).size.width * 0.9,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                          child: TextBig(
                            text: "Bem Vindo de volta!",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 15),
                          child: TextSmall(
                            text: "Entre com uma conta existente",
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                            child: Observer(
                              builder: (_) => PrincipalTextField(
                                hint: "E-mail",
                                onChanged: store.onChangedEmail,
                                errorTxt: store.errorEmail,
                                textInputType: TextInputType.emailAddress,
                                icon: Icon(Icons.alternate_email,
                                    color: AppColorScheme.ColorPrincipal),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 30),
                            child: Observer(
                              builder: (_) => PrincipalTextField(
                                hint: "Senha",
                                onChanged: store.onChangedPass,
                                errorTxt: store.errorPass,
                                icon: Icon(Icons.lock_outline,
                                    color: AppColorScheme.ColorPrincipal),
                                obscure: true,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
                            child: Observer(
                              builder: (_) => ButtonPrincipal(
                                text: "Entrar",
                                onPressed: store.isValid ? store.login : null,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextSmall(text: "Não tem uma conta?"),
                        FlatButton(
                            child: Text(
                              "Clique aqui",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColorScheme.txtColorPrincipal),
                            ),
                            onPressed: () {
                              Modular.to.pushNamed("/signUp/");
                            })
                      ],
                    )
                  ],
                ));
    })));
  }
}
