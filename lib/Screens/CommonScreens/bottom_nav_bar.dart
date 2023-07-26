import 'package:development/CustomWidgets/TournmentCardwidget.dart';
import 'package:development/Screens/HomeScreen/home_screen.dart';
import 'package:development/Screens/MultiiPlayerScreen/multi_player_screen.dart';
import 'package:development/Screens/TournmentScreen/tournment_screen.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../main.dart';

class BottomNavbar extends StatefulWidget {
@override
_BottomNavbarState createState() => _BottomNavbarState();
}
class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  // Create a list of page widgets that correspond to each navigation bar item
  final List<Widget> _pages = [
    HomeScreen(),
    MultiPlayerScreen(),
    TournmentScreen(),
    MyHomePage(title: "title"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
      ]),
      child: SafeArea(
        child: Container(
          color: appColorBlack,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey, // tab button ripple color when pressed
            hoverColor: Colors.grey,
            gap: 8,
            activeColor: navbarActivecollor,
            color: appColorWhite,

            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 800),
            tabBackgroundColor: appPrimaryColor,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
                textColor: appColorWhite,
              ),
              GButton(
                icon: Icons.add,
                text: 'Add',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favorite',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
