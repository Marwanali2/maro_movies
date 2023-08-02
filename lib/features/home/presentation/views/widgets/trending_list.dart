import 'package:flutter/material.dart';
import 'package:marovies/features/home/presentation/views/widgets/trending_list_item.dart';

import '../../../../../core/utils/custom_network_image.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.37,
      child: Swiper(
        itemBuilder: (context, index) {
          return TrendingListItem();
        },
        itemCount: 3,
        viewportFraction: 0.7,
        scale: 0.75,
      ),
    );
  }
}
//aspectRatio: 258 / 336,
