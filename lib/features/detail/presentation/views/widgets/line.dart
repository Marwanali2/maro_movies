import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class Line extends StatelessWidget {
  const Line({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: double.infinity,
        height: 1,
        color: ColorStyles.kGreyColor,
      ),
    );
  }
}
