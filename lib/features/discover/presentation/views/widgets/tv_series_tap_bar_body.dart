import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marovies/core/widgets/custom_error_widget.dart';
import 'package:marovies/core/widgets/custom_loading_indicator.dart';
import 'package:marovies/features/discover/presentation/views/managers/top_rated_tv_series_cubit/top_rated_tv_series_cubit.dart';
import 'package:marovies/features/discover/presentation/views/widgets/tap_bar_body.dart';

import '../../../../../core/utils/custom_network_image.dart';
import '../../../../../core/utils/styles.dart';

class TvSeriesTapBarBody extends StatelessWidget {
  const TvSeriesTapBarBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedTvSeriesCubit, TopRatedTvSeriesState>(
      builder: (context, state) {
        if (state is TopRatedTvSeriesSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 24),
            child: ListView.builder(
              itemCount: state.topRatedTvSeries.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 170,
                          child: CustomNetworkImage(
                            imageUrl:
                                "https://image.tmdb.org/t/p/w500${state.topRatedTvSeries[index].posterPath}",
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
                                      '${state.topRatedTvSeries[index].name}',
                                      style: TextStyles.textStyle16,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '(${state.topRatedTvSeries[index].firstAirDate?.substring(0, 4)})',
                                style: TextStyles.textStyle12.copyWith(
                                  color: ColorStyles.kGreyColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 35,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: CustomNetworkImage(
                              imageUrl:
                                  "https://image.tmdb.org/t/p/w500${state.topRatedTvSeries[19 - index].posterPath}",
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
                                        '${state.topRatedTvSeries[19 - index].name}',
                                        style: TextStyles.textStyle16,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '(${state.topRatedTvSeries[19 - index].firstAirDate?.substring(0, 4)})',
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
                  ],
                );
              },
            ),
          );
        } else if (state is TopRatedTvSeriesFailure) {
          return const CustomErrorWidget();
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
