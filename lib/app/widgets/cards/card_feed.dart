import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class CardFeed extends StatelessWidget {
  final String textPost;

  CardFeed({this.textPost});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
                colors: [AppColorScheme.ColorLightPrincipal,  AppColorScheme.ColorLightOrange],
                begin: const FractionalOffset(0.2, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                tileMode: TileMode.clamp
            ),
          ),
          height: 180,
          width: MediaQuery.of(context).size.width * .95,
        child: Padding(
          padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
          child: Column(
            children: [
              Expanded(
                  child: Text(
                    textPost,
                    style: TextStyle(
                        color: AppColorScheme.txtColorDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.justify,
                  )),
            ],
          ),
        )
      ),
    );
  }
}
