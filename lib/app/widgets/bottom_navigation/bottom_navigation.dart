import 'package:flutter/material.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';
import 'package:micro_blog_bot/app/style/app_color_scheme.dart';

Widget bottomBarWidget({int selectedIndex, Function onItemTapped}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)),
    ),
    child: GradientBottomNavigationBar(
      fixedColor: Color(0xFFF5821F),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset("images/newsletter.png", height: 20, width: 20,),
          title: Text('Novidades', style: TextStyle(color: Colors.white),),
        ),
        BottomNavigationBarItem(
          icon: Image.asset("images/hashtag_icon.png", height: 20, width: 20,),
          title: Text('Posts da Galera', style: TextStyle(color: Colors.white),),
        ),
        BottomNavigationBarItem(
          icon: Image.asset("images/user_icon.png", height: 20, width: 20,),
          title: Text('Meus Posts', style: TextStyle(color: Colors.white),),
        ),
      ],
      backgroundColorStart: AppColorScheme.ColorPrincipal,
      backgroundColorEnd: AppColorScheme.ColorOrange,
      onTap: onItemTapped,
      currentIndex: selectedIndex,
    ),
  );
}
