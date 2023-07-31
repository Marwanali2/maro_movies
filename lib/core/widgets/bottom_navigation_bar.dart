import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marovies/features/discover/presentation/views/discover_view.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/widgets/profile_view.dart';
import '../utils/styles.dart';

class BottomAnimatedNavigationBar extends StatefulWidget {
  BottomAnimatedNavigationBar({Key? key}) : super(key: key);

  @override
  State<BottomAnimatedNavigationBar> createState() =>
      _BottomAnimatedNavigationBarState();
}

class _BottomAnimatedNavigationBarState
    extends State<BottomAnimatedNavigationBar> {
  static int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomeView(),
    DiscoverView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ColorStyles.kPrimaryColor,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.play_circle,
          ),
          label: "Discover",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: "Profile",
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
