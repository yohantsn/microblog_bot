import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/signup/signup_controller.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';
import 'package:micro_blog_bot/app/widgets/buttons/button_principal.dart';
import 'package:micro_blog_bot/app/widgets/text/text_big.dart';
import 'package:micro_blog_bot/app/widgets/text/text_small.dart';
import 'package:micro_blog_bot/app/widgets/text_fields/principal_text_field.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends ModularState<SignUpPage, SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Observer(builder: (_) {
      return store.isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BackButton(
                      onPressed: () {
                        Modular.to.pop();
                      },
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                      child: TextBig(
                        text: "Vamos começar!",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 15),
                      child: TextSmall(
                        text: "Crie uma conta informando os dados abaixo",
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        child: Observer(
                          builder: (_) => PrincipalTextField(
                            hint: "Nome",
                            onChanged: store.onChangedName,
                            errorTxt: store.errorName,
                            icon: Icon(Icons.person_outline,
                                color: AppColorScheme.ColorPrincipal),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        child: Observer(
                          builder: (_) => PrincipalTextField(
                            hint: "E-mail",
                            onChanged: store.onChangedEmail,
                            errorTxt: store.errorEmail,
                            icon: Icon(Icons.alternate_email,
                                color: AppColorScheme.ColorPrincipal),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
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
                        builder: (_) => PrincipalTextField(
                          hint: "Confirma Senha",
                          onChanged: store.onChangedConfPass,
                          errorTxt: store.errorConfPass,
                          icon: Icon(Icons.lock_outline,
                              color: AppColorScheme.ColorPrincipal),
                          obscure: true,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
                        child: Observer(
                          builder: (_) => ButtonPrincipal(
                              text: "Entrar",
                              onPressed: store.isValid ? store.save : null),
                        )),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextSmall(text: "Já possui uma conta?"),
                    FlatButton(
                        child: Text(
                          "Clique aqui",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColorScheme.txtColorPrincipal),
                        ),
                        onPressed: () {
                          Modular.to.pop();
                        })
                  ],
                )
              ],
            ));
    })));
  }
}
