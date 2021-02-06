import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class GradientBar extends StatelessWidget {
  final String title;
  final barHeight = 60.0;
  final bool showButtonLogout;
  final Function onLogout;

  GradientBar({this.title, @required this.showButtonLogout, this.onLogout});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )),
          showButtonLogout ? Padding(
              padding: EdgeInsets.all(5),
            child: IconButton(
              icon: Icon(Icons.logout, color: Colors.white,),
              onPressed: onLogout,
            ),
          ) : Container()
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        gradient: LinearGradient(
            colors: [AppColorScheme.ColorPrincipal, AppColorScheme.ColorOrange],
            begin: const FractionalOffset(0.2, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            tileMode: TileMode.clamp),
      ),
    );
  }
}
