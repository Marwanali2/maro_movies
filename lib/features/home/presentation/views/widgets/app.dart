import 'package:flutter/material.dart';
import 'package:marovies/core/widgets/bottom_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:marovies/features/discover/presentation/views/discover_view.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../profile/presentation/views/profile_view.dart';
import '../home_view.dart';

int _selectedIndex = 0;
const List<Widget> _pages = <Widget>[
  HomeView(),
  DiscoverView(),
  ProfileView(),
];

class BottomAnimatedNavigationBar extends StatefulWidget {
  BottomAnimatedNavigationBar({Key? key}) : super(key: key);

  @override
  State<BottomAnimatedNavigationBar> createState() =>
      _BottomAnimatedNavigationBarState();
}

class _BottomAnimatedNavigationBarState
    extends State<BottomAnimatedNavigationBar> {
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

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomAnimatedNavigationBar(),
      ),
    );
  }
}
