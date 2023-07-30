import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class MovieNameDetails extends StatelessWidget {
  const MovieNameDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Star Wars: The Last Jedi',
            style: TextStyles.textStyle24,
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            alignment: Alignment.center,
            width: 55,
            height: 35,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey.withOpacity(0.5),
                  ColorStyles.kBoldGreyColor.withOpacity(0),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: const Center(
                  child: Text(
                '4K',
                style: TextStyles.textStyle16,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
