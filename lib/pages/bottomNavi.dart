import 'package:burger_hunter/pages/cart.dart';
import 'package:burger_hunter/pages/homepage/homepage.dart';
import 'package:burger_hunter/pages/profile.dart';
import 'package:flutter/material.dart';

import '../elements/colorAsset.dart';

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({super.key});

  @override
  State<Bottomnavi> createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Bottomnavi> {
  int _selectedIndex = 1;
  List pages = [ProfilePage(), Homepage(), CartPage()];
  onTab(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: color,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: onTab,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: 'Person',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, size: 30),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
