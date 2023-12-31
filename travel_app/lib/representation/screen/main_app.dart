import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/representation/form/show.dart';
import 'package:travel_app/representation/screen/blog_screen.dart';
import 'package:travel_app/representation/screen/discover_screen.dart';
import 'package:travel_app/representation/screen/home_screen.dart';

import 'package:travel_app/representation/screen/profile_screen.dart';
import 'package:travel_app/representation/screen/social_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({
    Key? key,
   
  }) : super(key: key);

  static const routeName = 'main_app';

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          DiscoverScreen(),
          BlogScreen(),
    
          // SocialScreen(),
          // LoginScreen(),

          ProfileScreen(),
          Container(
            color: ColorsPalette.primaryColor,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.black,
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: ColorsPalette.primaryColor,
        unselectedItemColor: ColorsPalette.primaryColor.withOpacity(0.2),
        margin: EdgeInsets.symmetric(
            horizontal: kMediumPadding, vertical: kDefaultPadding),
        items: [
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              size: kDefaultPadding,
            ),
            title: Text("Trang chủ"),
            selectedColor: ColorsPalette.primaryColor,
          ),
          SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.solidHeart,
                size: kDefaultPadding,
              ),
              title: Text("Khám phá"),
              selectedColor: Colors.red),
          SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.cameraRetro,
                size: kDefaultPadding,
              ),
              title: Text("Blog"),
              selectedColor: Colors.blue),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.solidUser,
              size: kDefaultPadding,
            ),
            title: Text("Cá nhân"),
            selectedColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
