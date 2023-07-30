import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../core/utils/styles.dart';

class RelatedMoviesListView extends StatelessWidget {
  const RelatedMoviesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
