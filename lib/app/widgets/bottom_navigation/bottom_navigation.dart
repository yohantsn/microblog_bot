import 'package:flutter/material.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';

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
          icon: Icon(
            Icons.new_releases_sharp,
            color: Colors.white,
          ),
          title: Text('Novidades', style: TextStyle(color: Colors.white),),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: Text('Feed', style: TextStyle(color: Colors.white),),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          title: Text('Perfil', style: TextStyle(color: Colors.white),),
        ),
      ],
      backgroundColorStart: Color(0xFFD6DF22),
      backgroundColorEnd: Color(0xFF3B9CD6),
      onTap: onItemTapped,
      currentIndex: selectedIndex,
    ),
  );
}
