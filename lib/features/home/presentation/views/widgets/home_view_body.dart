import 'package:flutter/material.dart';
import 'package:marovies/features/home/presentation/views/widgets/trending_list.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/top_bar.dart';
import 'continue_now.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        // app bar
        Padding(
          padding:EdgeInsets.only(left: 24,top: 44,right: 127),
          child: TopBar(gradientText: "Stream",text: "Every Where",gradientWidth: 150),
        ),
        SizedBox(
          height: 28,
        ),
        // continue now image
        ContinueNow(),
        SizedBox(
          height: 36,
        ),
        // trending
        Padding(
          padding: EdgeInsets.only(left: 24, right: 252),
          child: Text(
            "Trending",
            style: TextStyles.textStyle24,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        // trend movies list view
        TrendingList(),
        SizedBox(height: 11,),
      ],
    );
  }
}

/*CustomScrollView(
      physics: BouncingScrollPhysics(),
     shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              // app bar
              TopBar(),
              // continue now image
              ContinueNow(),
              // trending
              Padding(
                padding: EdgeInsets.fromLTRB(24, 36, 252, 24),
                child: Text(
                  "Trending",
                  style: TextStyles.textStyle24,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: TrendingList(),
        ),
      ],
    );*/
