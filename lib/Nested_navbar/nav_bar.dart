import 'package:flutter/material.dart';
import 'package:splashscreen/chat.dart';
import 'package:splashscreen/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myIndex = 0;
  List<Widget> widgetList = [
    const ChatApp(),
    Container(
      height: 200,
      width: 200,
      color: Colors.red,
    ),
    // const ChatPage(),
    const HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline_sharp),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
