import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project1/tabs/cart_page.dart';
import 'package:project1/tabs/favorite.dart';
import 'package:project1/tabs/home_page.dart';
import 'package:project1/tabs/profile_page.dart';

class NavBar extends StatefulWidget {
  NavBar({required this.indexNum});

  int indexNum = 0;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 89,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(100),
        ),
        child: GNav(
          
          gap: 15,
          // tabBorderRadius: 100,
          iconSize: 23,
          textSize: 20,
          
          activeColor: Colors.blue,
          backgroundColor: Colors.white,
          selectedIndex: widget.indexNum,
          onTabChange: (selectedIndex) {
            if (selectedIndex == 0) {
             Get.off(()=>HomePage());
            } else if (selectedIndex == 1) {
              Get.off(()=>FavoritePage());
            } else if (selectedIndex == 2) {
            Get.off(()=>CartPage());
            } else if (selectedIndex == 3) {
              Get.off(()=>ProfilePage());
            }
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'home',
            ),
            GButton(
              icon: Icons.favorite,
              iconColor: Colors.red,
              text: 'favorite',
            ),
            GButton(
              
              icon: Icons.shopping_cart,
              text: 'items',
            ),
            GButton(
              icon: Icons.person,
              text: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}
