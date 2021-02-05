import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/app/pages/home/profile/profile_controller.dart';
import 'package:micro_blog_bot/app/widgets/screen/default_screen.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      showAppBar: true,
      title: "Perfil",
      body: Container(),
    );
  }
}
