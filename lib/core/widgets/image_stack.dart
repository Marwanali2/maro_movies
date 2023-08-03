import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marovies/features/home/presentation/views/manager/trending_movies_cubit/trending_movies_cubit.dart';

import '../utils/custom_network_image.dart';
import '../utils/styles.dart';
import 'custom_error_widget.dart';
import 'custom_loading_indicator.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingMoviesCubit, TrendingMoviesState>(
      builder: (context, state) {
        if (state is TrendingMoviesSuccess) {
          return Stack(
            children: [
              CustomNetworkImage(
                imageUrl:
                    "https://image.tmdb.org/t/p/w500${state.movies[4].posterPath}",
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
                        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
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
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 18, 20, 16),
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
        } else if (state is TrendingMoviesFailure) {
          return const CustomErrorWidget();
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
