import 'package:flutter/material.dart';

import '../../../../../core/widgets/image_stack.dart';

class ContinueNow extends StatelessWidget {
  const ContinueNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 24, left: 24),
      child: ImageStack(),
    );
  }
}
