part of 'top_rated_tv_series_cubit.dart';

abstract class TopRatedTvSeriesState extends Equatable {
  const TopRatedTvSeriesState();

  @override
  List<Object> get props => [];
}

class TopRatedTvSeriesInitial extends TopRatedTvSeriesState {}

class TopRatedTvSeriesLoading extends TopRatedTvSeriesState {}

class TopRatedTvSeriesSuccess extends TopRatedTvSeriesState {
  final List<TopRatedTvSeriesModel> topRatedTvSeries;

  const TopRatedTvSeriesSuccess(this.topRatedTvSeries);
}

class TopRatedTvSeriesFailure extends TopRatedTvSeriesState {
  final String errorMessage;

  const TopRatedTvSeriesFailure(this.errorMessage);
}
