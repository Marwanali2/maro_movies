import 'package:flutter/material.dart';
import 'package:marovies/core/widgets/bottom_navigation_bar.dart';
import 'package:marovies/features/home/presentation/views/widgets/home_view_body.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
     // bottomNavigationBar: BottomAnimatedNavigationBar(),
      ),
    );
  }
}

