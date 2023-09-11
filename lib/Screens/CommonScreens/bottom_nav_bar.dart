import 'package:flutter/material.dart';
import 'package:development/Screens/HomeScreen/home_screen.dart';
import 'package:development/Screens/LeaderBoardScreen/learderboard_screen.dart';
import 'package:development/Screens/MultiiPlayerScreen/multi_player_screen.dart';
import 'package:development/Screens/TournmentScreen/tournment_screen.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ReferScreen/refer_screen.dart';

class CustomBottomNavItem extends StatelessWidget {
  final String activeSvgPath;
  final String inactiveSvgPath;
  final bool isActive;
  final VoidCallback onPressed;

  CustomBottomNavItem({
    required this.activeSvgPath,
    required this.inactiveSvgPath,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // height: 40,
        // padding: const EdgeInsets.only(top: 16.0),
        child: SvgPicture.asset(
          isActive ? inactiveSvgPath:activeSvgPath,
        ),
      ),
    );
  }
}
class CustomPngBottomNavItem extends StatelessWidget {
  final String activePngPath;
  final String inactivePngPath;
  final bool isActive;
  final VoidCallback onPressed;

  CustomPngBottomNavItem({
    required this.activePngPath,
    required this.inactivePngPath,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // height: 40,
        // padding: const EdgeInsets.only(top: 16.0),
        child: Image.asset(
          isActive ? inactivePngPath:activePngPath,
          width :isActive ?  90: 50,
          height :isActive ?  37: 48,

        ),
      ),
    );
  }
}

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    MultiPlayerScreen(),
    TournmentScreen(),
    Refer(),
    LeaderBoardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Use PageView to display the current page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting, // Add this line

        // fixedColor: Colors.black26,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Set the current index to the tapped index
          });
        },
        // confineInSafeArea: true,
        items: [
          BottomNavigationBarItem(
            backgroundColor: appbottomNavColor,
            icon: CustomPngBottomNavItem(
              activePngPath: "assets/NavBar/home-closed.png",
              inactivePngPath: "assets/NavBar/home-open.png",
              isActive: _currentIndex == 0,
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: appbottomNavColor,

            icon: CustomBottomNavItem(
              activeSvgPath: 'assets/NavBar/multiplayer.svg',
              inactiveSvgPath: 'assets/NavBar/multiplayer_active.svg',
              isActive: _currentIndex == 1,
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: appbottomNavColor,

            icon: CustomBottomNavItem(
              activeSvgPath: 'assets/NavBar/leaderboard.svg',
              inactiveSvgPath: 'assets/NavBar/tournmentinactive.svg',
              isActive: _currentIndex == 2,
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: appbottomNavColor,

            icon: CustomBottomNavItem(
              activeSvgPath: 'assets/NavBar/referral.svg',
              inactiveSvgPath: 'assets/NavBar/referrel_active.svg',
              isActive: _currentIndex == 3,
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: appbottomNavColor,

            icon: CustomBottomNavItem(
              activeSvgPath: 'assets/NavBar/l_board.svg',
              inactiveSvgPath: 'assets/NavBar/learderboard_active.svg',
              isActive: _currentIndex == 4,
              onPressed: () {
                setState(() {
                  _currentIndex = 4;
                });
              },
            ),
            label: '',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black12,
        selectedFontSize: 0, // Set font size to a very small value
        unselectedFontSize: 0,
      ),

    );
  }
}
