import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoviePosterDetails extends StatelessWidget {
  const MoviePosterDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.40,
          width: MediaQuery.sizeOf(context).width,
          child: Image.network(
            'https://th.bing.com/th/id/R.e353b1d1745c27996ea141bd3c4966fc?rik=xXbcQkWUxIWhYw&riu=http%3a%2f%2f3.bp.blogspot.com%2f-aRx3vMaxyFQ%2fUOwfMdLZ4oI%2fAAAAAAAAB9c%2frCT9VjtdRuc%2fs1600%2fThe-Last-Stand-poster-final%2bposter.jpg&ehk=v0euh%2fiUzTKCVKx0lOOz49i2oJ6C0b%2bIr6qEB4dAt7M%3d&risl=&pid=ImgRaw&r=0',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 110,
          left: 170,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: SvgPicture.asset(
                "assets/svg/play_movie_icon.svg",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
