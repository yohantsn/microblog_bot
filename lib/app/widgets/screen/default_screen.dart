import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/widgets/app_bar/gradient_bar.dart';

class DefaultScreen extends StatelessWidget {
  final String title;
  final BottomNavigationBar bottomNavigationBar;
  final FloatingActionButton floatingActionButton;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final Widget body;
  final bool showAppBar;
  final bool showLogout;
  final Function onLogout;

  DefaultScreen(
      {this.title,
      this.bottomNavigationBar,
      this.floatingActionButton,
      this.floatingActionButtonLocation,
      this.body,
      @required this.showAppBar,
      @required this.showLogout,
      this.onLogout
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        body:  Column(
          children: [
            showAppBar ? GradientBar(
              title: title,
              showButtonLogout: showLogout,
              onLogout: onLogout,
            ): Container(),
            body
          ],
        ),

    );
  }
}
