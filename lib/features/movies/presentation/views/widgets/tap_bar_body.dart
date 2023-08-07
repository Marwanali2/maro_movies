import 'package:flutter/material.dart';

import 'movie_container.dart';

class TapBarBody extends StatelessWidget {
  const TapBarBody({Key? key, required this.imageUrl1, required this.imageUrl2})
      : super(key: key);
  final String imageUrl1;
  final String imageUrl2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 30,
                  bottom: 30,
                ),
                child: MovieContainer(imageUrl: imageUrl1),
              ),
              MovieContainer(imageUrl: imageUrl2),
            ],
          );
        },
      ),
    );
  }
}
