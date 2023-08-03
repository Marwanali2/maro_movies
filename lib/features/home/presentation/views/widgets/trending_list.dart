import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marovies/core/widgets/custom_error_widget.dart';
import 'package:marovies/core/widgets/custom_loading_indicator.dart';
import 'package:marovies/features/home/presentation/views/manager/trending_movies_cubit/trending_movies_cubit.dart';

import '../../../../../core/utils/custom_network_image.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../../../../../core/utils/styles.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingMoviesCubit, TrendingMoviesState>(
      builder: (context, state) {
        if (state is TrendingMoviesSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.37,
            child: Swiper(
              autoplay: true,
              autoplayDelay: 3000,
              curve: Curves.easeInOutBack,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: CustomNetworkImage(
                        imageUrl:
                            "https://image.tmdb.org/t/p/w500${state.movies[index].posterPath}",
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
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
                                child: Center(
                                  child: Text(
                                    '${state.movies[index].title}',
                                    style: TextStyles.textStyle16.copyWith(
                                        fontSize: 18, color: Colors.orange),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      bottom: 260,
                      right: 30,
                      child: SizedBox(
                        child: Container(
                          width: 120,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
                                        padding: const EdgeInsets.only(
                                            top: 6, bottom: 6, left: 8),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "IMDB",
                                              style: TextStyles.textStyle8,
                                            ),
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
                                        padding: const EdgeInsets.only(
                                            top: 18, bottom: 9),
                                        child: Text(
                                          '(${state.movies[index].voteCount?.toInt()})',
                                          style: TextStyles.textStyle8.copyWith(
                                              fontSize: 12,
                                              color: Colors.white38),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 18, right: 10, bottom: 9),
                                        child: Text(
                                          '${state.movies[index].voteAverage}.0',
                                          style: TextStyles.textStyle16
                                              .copyWith(fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: state.movies.length,
              viewportFraction: 0.7,
              scale: 0.75,
            ),
          );
        } else if (state is TrendingMoviesFailure) {
          return CustomErrorWidget();
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
//aspectRatio: 258 / 336,
