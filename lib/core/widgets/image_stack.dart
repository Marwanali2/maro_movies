import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/custom_network_image.dart';
import '../utils/styles.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomNetworkImage(
          imageUrl:
              "https://th.bing.com/th/id/R.625b11cefe5c064d869ddf910fe100b7?rik=Wu8iux1ba622fQ&pid=ImgRaw&r=0",
          aspectRatio: 327 / 191,
        ),
        Positioned(
          top: 121,
          bottom: 8,
          left: 12,
          child: SizedBox(
            child: Container(
              width: 250,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black.withOpacity(1), Colors.transparent],
                      stops: const [0.6, 1],
                    ).createShader(bounds),
                    blendMode: BlendMode.dstIn,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 18, 20, 16),
                          child: SvgPicture.asset(
                            "assets/svg/play_icon.svg",
                            height: 40,
                            width: 28,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 11, right: 16, bottom: 14),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Continue  Watching",
                                style: TextStyles.textStyle12.copyWith(
                                  color: ColorStyles.kGreyColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                "Ready Player Now",
                                style: TextStyles.textStyle16,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
