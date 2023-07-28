import 'package:flutter/material.dart';
import 'package:marovies/features/discover/presentation/views/widgets/movies_tap_bar_body.dart';
import 'package:marovies/features/discover/presentation/views/widgets/search_box.dart';
import 'package:marovies/features/discover/presentation/views/widgets/top_discover_bar.dart';

import '../../../../core/utils/styles.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              TopDiscoverBar(
                gradientText: "Find Movies, Tv series, ",
                text: "and more..",
              ),
              SizedBox(height: 25),
              SearchBox(),
              SizedBox(height: 20),
              TabBar(
                dividerColor: ColorStyles.kPrimaryColor,
                indicatorColor: Colors.orange.shade900,
                physics: BouncingScrollPhysics(),
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
                      child: Text(
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
                      child: Text(
                        'Tv Series',
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
                            130,
                            24,
                          ),
                        );
                      },
                      child: Text(
                        'Documentary',
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
                            60,
                            24,
                          ),
                        );
                      },
                      child: Text(
                        'Sports',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Expanded(
                child: TabBarView(
                  children: [
                    // Replace this with the widget tree for the Movies tab
                    MoviesTapBarBody(),
                    // Replace this with the widget tree for the TV Series tab
                    Center(
                      child: Text('TV Series'),
                    ),
                    // Replace this with the widget tree for the Documentary tab
                    Center(
                      child: Text('Documentary'),
                    ),
                    // Replace this with the widget tree for the Sports tab
                    Center(
                      child: Text('Sports'),
                    ),
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
