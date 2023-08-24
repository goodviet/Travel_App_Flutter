import 'package:flutter/material.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({
    required this.index,
    Key? key,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(left: 50),
              child: IconButton(
                onPressed: (() {}),
                icon: const Icon(Icons.post_add),
              ),
            ),
            label: "Tin Tức"),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(left: 50),
              child: IconButton(
                onPressed: (() {}),
                icon: const Icon(Icons.search),
              ),
            ),
            label: "Search"),
        // BottomNavigationBarItem(
        //     icon: IconButton(
        //       onPressed: (() {}),
        //       icon: const Icon(Icons.home),
        //     ),
        //     label: "Profile"),
      ],
    );
  }
}
