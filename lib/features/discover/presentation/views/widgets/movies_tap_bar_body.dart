import 'package:flutter/material.dart';

import '../../../../../core/utils/custom_network_image.dart';
import '../../../../../core/utils/styles.dart';

class MoviesTapBarBody extends StatelessWidget {
  const MoviesTapBarBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30,bottom: 30,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                      child: const CustomNetworkImage(
                        imageUrl:
                        "https://th.bing.com/th/id/OIP.jXuX7WlWVthy71Ymhb0UWQHaIt?pid=ImgDet&rs=1",
                        aspectRatio: 125 / 150,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        const Text(
                          'Knives Out ',
                          style: TextStyles.textStyle16,
                        ),
                        Text(
                          '(2019)',
                          style: TextStyles.textStyle16.copyWith(
                            color: ColorStyles.kGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 160,
                    child: const CustomNetworkImage(
                      imageUrl:
                      "https://th.bing.com/th/id/OIP.jXuX7WlWVthy71Ymhb0UWQHaIt?pid=ImgDet&rs=1",
                      aspectRatio: 125 / 120,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      const Text(
                        'Knives Out ',
                        style: TextStyles.textStyle16,
                      ),
                      Text(
                        '(2019)',
                        style: TextStyles.textStyle16.copyWith(
                          color: ColorStyles.kGreyColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
