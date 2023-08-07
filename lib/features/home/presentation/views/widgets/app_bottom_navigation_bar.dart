import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../movies/presentation/views/movies_view.dart';
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
            MoviesView(),
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
                Icons.movie,
              ),
              label: "Movies",
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
