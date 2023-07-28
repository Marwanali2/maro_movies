import 'package:flutter/material.dart';

import '../utils/styles.dart';

class TopBar extends StatelessWidget {
   const TopBar({super.key,
    required this.gradientText, required this.text,required this.gradientWidth,
  });
  final String?gradientText;
  final String?text;
  final double?gradientWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$gradientText ",
            style: TextStyles.textStyle24.copyWith(
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: [Colors.orange.shade900, Colors.white],
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                ).createShader( Rect.fromLTWH(10, 0, gradientWidth!, 24),),
            ),
        ),
        Text("$text",
            style:
            TextStyles.textStyle24.copyWith(color: Colors.white,),),
      ],
    );
  }
}