import 'package:flutter/material.dart';
import 'package:marovies/features/movies/presentation/views/widgets/action_movies_tap_bar_body.dart';
import 'package:marovies/features/movies/presentation/views/widgets/comedy_movies_tap_bar_body.dart';
import 'package:marovies/features/movies/presentation/views/widgets/fantasy_movies_tap_bar_body.dart';
import 'package:marovies/features/movies/presentation/views/widgets/history_movies_tap_bar_body.dart';
import 'package:marovies/features/movies/presentation/views/widgets/top_movies_tap_bar_body.dart';
import 'package:marovies/features/movies/presentation/views/widgets/search_box.dart';
import 'package:marovies/features/movies/presentation/views/widgets/top_discover_bar.dart';

import '../../../../core/utils/styles.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
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
                        'Top',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ), // top   movies
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
                        'Action',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ), // action movies
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
                        'Comedy',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ), // comedy movies
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
                        'Fantasy',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ), // fantasy movies
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
                        'History',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ), // history movies
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    TopMoviesTapBarBody(),
                    ActionMoviesTapBarBody(),
                    ComedyMoviesTapBarBody(),
                    FantasyMoviesTapBarBody(),
                    HistoryMoviesTapBarBody(),
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
