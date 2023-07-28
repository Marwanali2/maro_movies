import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class TopDiscoverBar extends StatelessWidget {
  const TopDiscoverBar({
    super.key,
    required this.gradientText,
    required this.text,
  });

  final String? gradientText;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 36,
        left: 24,
        right: 68,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$gradientText ",
            style: TextStyles.textStyle24.copyWith(
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: [Colors.orange.shade900, Colors.white],
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                ).createShader(
                  const Rect.fromLTWH(10, 0, 500, 24),
                ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "$text",
            style: TextStyles.textStyle24.copyWith(
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: [Colors.orange.shade900, Colors.white],
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                ).createShader(
                  const Rect.fromLTWH(10, 0, 220, 24),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
