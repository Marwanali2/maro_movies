import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Container(
        width: 360,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(
            0.1,
          ),
          borderRadius: BorderRadius.circular(
            20,
          ),
          border: Border.all(
            color: ColorStyles.kGreyColor,
          ),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            SizedBox(
              width: 260,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Now",
                  hintStyle: TextStyles.textStyle16.copyWith(
                    color: ColorStyles.kGreyColor,
                  ),
                ),
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
