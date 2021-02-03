import 'package:flutter/material.dart';

class GradientBar extends StatelessWidget {
  final String title;
  final barHeight = 60.0;

  GradientBar({this.title});

  @override
  Widget build(BuildContext context) {
  final statusBarHeight = MediaQuery.of(context).padding.top;
  return Container(
    padding: EdgeInsets.only(top: statusBarHeight),
    height: statusBarHeight + barHeight,
    child: Center(
      child: Text(title, style: TextStyle(
        fontSize: 18,
        color: Colors.white
      ),),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
      gradient: LinearGradient(
          colors: [Color(0xFFD6DF22),  Color(0xFF3B9CD6)],
          begin: const FractionalOffset(0.2, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          // stops: [0.0, 1.0],
          tileMode: TileMode.clamp
      ),
    ),
  );
  }
}
