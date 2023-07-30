import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class MovieMinuetsAndRatingDetails extends StatelessWidget {
  const MovieMinuetsAndRatingDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 19,
      ),
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.clock,
            size: 25,
            color: ColorStyles.kGreyColor,
          ),
          Text(
            '  152 minuets',
            style:
                TextStyles.textStyle16.copyWith(color: ColorStyles.kGreyColor),
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            CupertinoIcons.star_fill,
            size: 25,
            color: ColorStyles.kGreyColor,
          ),
          Text(
            '  7.0 (IMDb)',
            style:
                TextStyles.textStyle16.copyWith(color: ColorStyles.kGreyColor),
          ),
        ],
      ),
    );
  }
}
