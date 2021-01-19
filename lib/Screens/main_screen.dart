import 'package:dev_fastfood/Screens/favourite_screen1.dart';
import 'package:dev_fastfood/Screens/home_screen.dart';
import 'package:dev_fastfood/Screens/order_screen.dart';
import 'package:dev_fastfood/Screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  onTap(int pageIndex) {
    pageController.animateToPage(pageIndex,
        duration: Duration(milliseconds: 30),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          HomeScreen(),
          OrderScreen(),
          FavouriteScreen1(),
          ProfileScreen(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red[600],
          selectedIconTheme: IconThemeData(color: Colors.red[600]),
          unselectedItemColor: Colors.black45,
          unselectedIconTheme: IconThemeData(color: Colors.black45),
          iconSize: 35,
          currentIndex: pageIndex,
          onTap: onTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border_outlined), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profiles')
          ]),
    );
  }
}
