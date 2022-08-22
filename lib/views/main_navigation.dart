import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify/views/home_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int index = 0;
  List<Widget> listPage = [
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: listPage[index],
      ),
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/home.png',
                  width: 27,
                ),
                activeIcon: Image.asset(
                  'assets/images/home.png',
                  width: 27,
                  color: Colors.purple,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/search.png',
                  width: 27,
                ),
                activeIcon: Image.asset(
                  'assets/images/search.png',
                  width: 27,
                  color: Colors.purple,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/folder.png',
                  width: 27,
                ),
                activeIcon: Image.asset(
                  'assets/images/folder.png',
                  width: 27,
                  color: Colors.purple,
                ),
                label: 'Your Library'),
          ],
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.white,
          currentIndex: index,
          onTap: (i) {
            setState(() {
              index = i;
            });
          },
        ),
      ),
    );
  }
}
