import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../core/utils/styles.dart';

class MovieSynopsis extends StatelessWidget {
  const MovieSynopsis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: ReadMoreText(
        'Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn ',
        style: TextStyles.textStyle16.copyWith(
          color: ColorStyles.kGreyColor,
        ),
        trimLines: 3,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show more',
        trimExpandedText: ' Show less',
        moreStyle: TextStyles.textStyle16.copyWith(
          fontSize: 18,
          color: Colors.white,
        ),
        lessStyle: TextStyles.textStyle16.copyWith(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
