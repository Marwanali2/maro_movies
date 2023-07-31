import 'package:flutter/material.dart';
import 'package:marovies/features/discover/presentation/views/discover_view.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../profile/presentation/views/profile_view.dart';
import '../home_view.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  final _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: const <Widget>[
            HomeView(),
            DiscoverView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorStyles.kPrimaryColor,
          currentIndex: _selectedIndex,
          onTap: (index) {
            _selectedIndex = index;
            _pageController.jumpToPage(index);
          },
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
        ),
      ),
    );
  }
}
