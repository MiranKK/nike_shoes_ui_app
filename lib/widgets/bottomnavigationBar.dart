import 'package:flutter/material.dart';
import 'package:nike_shoes/data/list_of_shoes.dart';
import 'package:nike_shoes/provider/functions.dart';
import 'package:provider/provider.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FunctionsData>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        body: screns[value.currentscreen],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.orange[900],
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey,
            elevation: 10,
            currentIndex: value.currentscreen,
            onTap: value.selectscreen,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'Messages'),
            ]),
      ),
    );
  }
}
