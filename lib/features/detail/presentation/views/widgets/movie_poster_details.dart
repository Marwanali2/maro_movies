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
            'https://th.bing.com/th/id/R.625b11cefe5c064d869ddf910fe100b7?rik=Wu8iux1ba622fQ&pid=ImgRaw&r=0',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 110,
          left: 170,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
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
