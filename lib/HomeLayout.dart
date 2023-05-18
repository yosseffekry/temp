import 'package:flutter/material.dart';
import 'package:flutter_application_1/Archive.dart';

import 'Account.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentPage = 0;

  List<Widget> screens = [Account(),Archive() ];
  List<BottomNavigationBarItem> Items = [
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
    BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'Archive'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: Items,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
      body: screens[currentPage],
    );
  }
}
