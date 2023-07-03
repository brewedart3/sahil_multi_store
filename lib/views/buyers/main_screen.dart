import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahil_multi_store/views/buyers/nav_screens/account_screen.dart';
import 'package:sahil_multi_store/views/buyers/nav_screens/cart_screen.dart';
import 'package:sahil_multi_store/views/buyers/nav_screens/home_screen.dart';
import 'package:sahil_multi_store/views/buyers/nav_screens/search_screen.dart';
import 'package:sahil_multi_store/views/buyers/nav_screens/store_screen.dart';

import 'nav_screens/categoty_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreeen(),
    CategoryScreeen(),
    StoreScreeen(),
    CartScreeen(),
    SearchScreen(),
    AccountScreeen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow.shade900,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'HOME'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: 'CATEGORIES'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_alt), label: 'STORE'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart), label: 'CART'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: 'SEARCH'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: 'ACCOUNT'),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
