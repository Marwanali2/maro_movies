import 'package:flutter/material.dart';

import '../../../../../core/utils/custom_network_image.dart';
import '../../../../../core/utils/styles.dart';

class MovieContainer extends StatelessWidget {
  final String imageUrl;

  const MovieContainer({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: CustomNetworkImage(
            imageUrl: imageUrl,
            aspectRatio: 125 / 150,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            const Text(
              'Knives Out ',
              style: TextStyles.textStyle16,
            ),
            Text(
              '(2019)',
              style: TextStyles.textStyle16.copyWith(
                color: ColorStyles.kGreyColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
