import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marovies/features/discover/data/models/top_rated_tv_series_model.dart';

part 'top_rated_tv_series_state.dart';

class TopRatedTvSeriesCubit extends Cubit<TopRatedTvSeriesState> {
  TopRatedTvSeriesCubit() : super(TopRatedTvSeriesInitial());
}
