import 'dart:ui';
import 'package:readmore/readmore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/styles.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
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
                top: 112,
                bottom: 111,
                left: 156,
                right: 155,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 0.1),
                    child: SvgPicture.asset(
                      "assets/svg/play_movie_icon.svg",
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
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
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 19,
            ),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.clock,
                  size: 25,
                  color: ColorStyles.kGreyColor,
                ),
                Text(
                  '  152 minuets',
                  style: TextStyles.textStyle16
                      .copyWith(color: ColorStyles.kGreyColor),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  CupertinoIcons.star_fill,
                  size: 25,
                  color: ColorStyles.kGreyColor,
                ),
                Text(
                  '  7.0 (IMDb)',
                  style: TextStyles.textStyle16
                      .copyWith(color: ColorStyles.kGreyColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: double.infinity,
              height: 1,
              color: ColorStyles.kGreyColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'Synopsis',
              style: TextStyles.textStyle24,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: ReadMoreText(
              'Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn ',
              style: TextStyles.textStyle16.copyWith(
                color: ColorStyles.kGreyColor,
              ),
              trimLines: 3,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: ' Show less',
              moreStyle: TextStyles.textStyle16.copyWith(
                fontSize: 18,
                color: Colors.white,
              ),
              lessStyle: TextStyles.textStyle16.copyWith(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: double.infinity,
              height: 1,
              color: ColorStyles.kGreyColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'Related Movies',
              style: TextStyles.textStyle24,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.29,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                              child: Image.network(
                                "https://th.bing.com/th/id/R.625b11cefe5c064d869ddf910fe100b7?rik=Wu8iux1ba622fQ&pid=ImgRaw&r=0",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: ReadMoreText(
                                'Star Wars: The Rise of Skywalker  (2019)',
                                style: TextStyles.textStyle16,
                                trimLines: 2,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'Show more',
                                trimExpandedText: ' Show less',
                                moreStyle: TextStyles.textStyle16.copyWith(
                                  fontSize: 18,
                                  color: ColorStyles.kGreyColor,
                                ),
                                lessStyle: TextStyles.textStyle16.copyWith(
                                  fontSize: 18,
                                  color: ColorStyles.kGreyColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
