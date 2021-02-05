import 'package:flutter/material.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

class CardFeed extends StatelessWidget {
  final String textPost;

  CardFeed({this.textPost});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          height: 180,
          width: MediaQuery.of(context).size.width * .95,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Expanded(
                  child: Text(
                    textPost,
                    style: TextStyle(
                        color: AppColorScheme.txtColorPrincipal,
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
