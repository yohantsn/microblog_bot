import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/widgets/app_bar/gradient_bar.dart';

class DefaultScreen extends StatelessWidget {
  final String title;
  final BottomNavigationBar bottomNavigationBar;
  final FloatingActionButton floatingActionButton;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final Widget body;

  DefaultScreen(
      {this.title,
      this.bottomNavigationBar,
      this.floatingActionButton,
      this.floatingActionButtonLocation,
      this.body});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      body: Column(
        children: [
          GradientBar(
            title: title,
          ),
          body
        ],
      ),
    ));
  }
}
