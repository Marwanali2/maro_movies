import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marovies/features/detail/presentation/views/details_view.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    Key? key,
    required this.imageUrl,
    required this.aspectRatio,
  }) : super(key: key);
  final String imageUrl;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return DetailsView();
          },
        ));
      },
      child: ClipRRect(
        child: AspectRatio(
          // نسبة العرض الي الطول اللي هتكون ثابتة بداخل ال sizedbox
          aspectRatio: aspectRatio,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            imageBuilder: (context, imageProvider) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white30,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(
                    18,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      imageUrl,
                    ),
                  ),
                ),
              );
            },
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white30,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(
                  18,
                ),
              ),
              child: Lottie.network(
                "https://assets2.lottiefiles.com/packages/lf20_vzj1xd0x.json",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
