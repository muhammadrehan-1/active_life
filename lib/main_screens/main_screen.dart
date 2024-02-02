import 'package:active_life/colors.dart';
import 'package:active_life/main_screens/user_screen.dart';
import 'package:active_life/main_screens/videos_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavBar(),
    );
  }
}



class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  late List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = [
      const HomeScreen(),
      const VideosScreen(),
      const UserScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child:  BottomNavigationBar(
          currentIndex: index,
          onTap: (int newIndex){
            setState(() {
              index = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg', height: 20, width: 20,),
              activeIcon: SvgPicture.asset('assets/icons/home_colored.svg',height: 20, width: 20,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/video.svg', height: 20, width: 20),
                activeIcon: SvgPicture.asset('assets/icons/video_colored.svg',height: 20, width: 20),
              label: 'Videos',
               ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/user.svg', height: 20, width: 20),
                activeIcon: SvgPicture.asset('assets/icons/user_colored.svg',height: 20, width: 20),
              label: 'User',
               ),
          ],
          selectedItemColor: yellowColor,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      body: screens[index],
    );
  }
}

