// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'shop_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index
  // when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display 
  List<Widget> _pages = [
    // shop page
    ShopPage(
  
    ),

    //cart page
    CartPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      backgroundColor: Colors.grey[500],
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left:12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
                ),
            ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }
            ),
          ),
        
          ),
          drawer: Drawer(
            backgroundColor: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                     // logo
                DrawerHeader(child: Image.asset('assets/images/bnike_logo.jpeg')
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(color: Colors.black),
                ),

                // other pages
                Padding(
                  padding: const EdgeInsets.only(left:25.0),
                  child: ListTile(
                    leading: Icon(Icons.home,
                    color: Colors.white,
                    ),
                    title: Text('H O M E',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:25.0, bottom: 400),
                  child: ListTile(
                    leading: Icon(Icons.info,
                    color: Colors.white,
                    ),
                    title: Text('A B O U T',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:25.0),
                  child: ListTile(
                    leading: Icon(Icons.logout,
                    color: Colors.white,
                    ),
                    title: Text('L O G O U T',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                    ),
                  ),
                ),
                  ],
                )
              ],
            )
          ),
          body: _pages[_selectedIndex],
              );
      
  }
}