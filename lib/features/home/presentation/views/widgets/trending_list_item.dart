import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/custom_network_image.dart';
import '../../../../../core/utils/styles.dart';
class TrendingListItem extends StatelessWidget {
  const TrendingListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12,),
          child: CustomNetworkImage(
            imageUrl:
            "https://th.bing.com/th/id/OIP.jXuX7WlWVthy71Ymhb0UWQHaIt?pid=ImgDet&rs=1",
            aspectRatio: 258 / 336,
          ),
        ),
        Positioned(
          top: 240,
          bottom: 20,
          left: 25,
          child: SizedBox(
            child: Container(
              width: 226,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(1),
                        Colors.transparent
                      ],
                      stops: const [0.6, 1],
                    ).createShader(bounds),
                    blendMode: BlendMode.dstIn,
                    child:const Center(child: Text('Star Wars: The Last Jedi',style: TextStyles.textStyle16,textAlign: TextAlign.center,))
                    ),
                  ),
                ),
              ),
            ),
          ),

        Positioned(
          top: 20,
          bottom: 260,
          left: 165,
          right: 30,
          child: SizedBox(
            child: Container(
              width: 100,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(1),
                          Colors.transparent
                        ],
                        stops: const [0.6, 1],
                      ).createShader(bounds),
                      blendMode: BlendMode.dstIn,
                      child:Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6,bottom: 6,left: 8),
                            child: Column(
                              children: [
                                const Text("IMDB",style: TextStyles.textStyle8,),
                                Spacer(),
                                SvgPicture.asset(
                                  "assets/svg/yellow_star.svg",
                                  height: 24,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 18,right: 16,bottom: 9),
                            child: const Text('7.0',style: TextStyles.textStyle16,),
                          ),
                        ],

                      )
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
