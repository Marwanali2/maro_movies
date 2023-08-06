import 'package:flutter/material.dart';
import 'package:marovies/features/discover/presentation/views/widgets/documentary_tap_bar_body.dart';
import 'package:marovies/features/discover/presentation/views/widgets/movies_tap_bar_body.dart';
import 'package:marovies/features/discover/presentation/views/widgets/search_box.dart';
import 'package:marovies/features/discover/presentation/views/widgets/sports_tap_bar_body.dart';
import 'package:marovies/features/discover/presentation/views/widgets/top_discover_bar.dart';
import 'package:marovies/features/discover/presentation/views/widgets/tv_series_tap_bar_body.dart';

import '../../../../core/utils/styles.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              const TopDiscoverBar(
                gradientText: "Find Movies, Tv series, ",
                text: "and more..",
              ),
              const SizedBox(height: 25),
              const SearchBox(),
              const SizedBox(height: 20),
              TabBar(
                dividerColor: ColorStyles.kPrimaryColor,
                indicatorColor: Colors.orange.shade900,
                indicatorSize: TabBarIndicatorSize.label,
                physics: const BouncingScrollPhysics(),
                isScrollable: true,
                tabs: [
                  Tab(
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.topRight,
                          colors: [Colors.orange.shade900, Colors.white],
                        ).createShader(
                          const Rect.fromLTWH(
                            10,
                            0,
                            60,
                            24,
                          ),
                        );
                      },
                      child: const Text(
                        'Movies',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.topRight,
                          colors: [Colors.orange.shade900, Colors.white],
                        ).createShader(
                          const Rect.fromLTWH(
                            10,
                            0,
                            80,
                            24,
                          ),
                        );
                      },
                      child: const Text(
                        'Tv Series',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    MoviesTapBarBody(),
                    TvSeriesTapBarBody(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
