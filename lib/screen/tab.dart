import 'package:flutter/material.dart';

import 'home.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);
  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int tabselected = 0;
  final pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages[tabselected],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.white,
          backgroundColor: Colors.white,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          height: 75,
          selectedIndex: tabselected,
          //  labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          animationDuration: Duration(seconds: 2),
          onDestinationSelected: (index) {
            setState(() {
              tabselected = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: ImageIcon(
                AssetImage("assets/tabs/new.png"),
              ),
              label: 'NEWS',
              selectedIcon: ImageIcon(
                AssetImage(
                  "assets/tabs/new.png",
                ),
              ),
            ),
            NavigationDestination(
              icon: ImageIcon(
                AssetImage("assets/tabs/event.png"),
              ),
              label: 'EVENTS',
              selectedIcon: ImageIcon(
                AssetImage("assets/tabs/event.png"),
              ),
            ),
            NavigationDestination(
              icon: ImageIcon(
                AssetImage("assets/tabs/food.png"),
                //
              ),
              label: 'FOOD & DRINK\n   & TOKENS',
              selectedIcon: ImageIcon(
                AssetImage("assets/tabs/food.png"),
                //
              ),
            ),
            NavigationDestination(
              icon: ImageIcon(
                AssetImage("assets/tabs/room.png"),
                //
              ),
              label: 'ROOMS',
              selectedIcon: ImageIcon(
                AssetImage("assets/tabs/room.png"),
                //
              ),
            ),
            NavigationDestination(
              icon: ImageIcon(
                AssetImage("assets/tabs/community.png"),
                //
              ),
              label: 'COMMUNITY',
              selectedIcon: ImageIcon(
                AssetImage("assets/tabs/community.png"),
                //
              ),
            ),
          ],
        ),
      ),
    );
  }
}
