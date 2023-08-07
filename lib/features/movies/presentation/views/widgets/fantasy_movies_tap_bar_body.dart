import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marovies/core/widgets/custom_error_widget.dart';
import 'package:marovies/core/widgets/custom_loading_indicator.dart';
import '../../../../../core/utils/custom_network_image.dart';
import '../../../../../core/utils/styles.dart';
import '../managers/top_rated_movies_cubit/top_rated_movies_cubit.dart';

class FantasyMoviesTapBarBody extends StatefulWidget {
  const FantasyMoviesTapBarBody({Key? key}) : super(key: key);

  @override
  State<FantasyMoviesTapBarBody> createState() =>
      _FantasyMoviesTapBarBodyState();
}

class _FantasyMoviesTapBarBodyState extends State<FantasyMoviesTapBarBody> {
  @override
  initState() {
    super.initState();
    BlocProvider.of<MoviesCubit>(context).fetchFantasyMovies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, MoviesState>(
      builder: (context, state) {
        if (state is MoviesSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 24),
            child: ListView.builder(
              itemCount: state.topRatedMovies.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 35,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 170,
                            child: CustomNetworkImage(
                              imageUrl:
                                  "https://image.tmdb.org/t/p/w500${state.topRatedMovies[index].posterPath}",
                              aspectRatio: 125 / 150,
                            ),
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            width: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 130,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${state.topRatedMovies[index].title}',
                                        style: TextStyles.textStyle16,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '(${state.topRatedMovies[index].releaseDate?.substring(0, 4)})',
                                  style: TextStyles.textStyle12.copyWith(
                                    color: ColorStyles.kGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 200,
                          child: CustomNetworkImage(
                            imageUrl:
                                "https://image.tmdb.org/t/p/w500${state.topRatedMovies[19 - index].posterPath}",
                            aspectRatio: 125 / 150,
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: 170,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 130,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${state.topRatedMovies[19 - index].title}',
                                      style: TextStyles.textStyle16,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '(${state.topRatedMovies[19 - index].releaseDate?.substring(0, 4)})',
                                style: TextStyles.textStyle12.copyWith(
                                  color: ColorStyles.kGreyColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          );
        } else if (state is MoviesFailure) {
          return CustomErrorWidget();
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
