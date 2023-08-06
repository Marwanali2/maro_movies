import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marovies/features/discover/data/models/repo/discover_repo.dart';
import 'package:marovies/features/discover/data/models/top_rated_tv_series_model.dart';

part 'top_rated_tv_series_state.dart';

class TopRatedTvSeriesCubit extends Cubit<TopRatedTvSeriesState> {
  final DiscoverRepo _discoverRepo;

  TopRatedTvSeriesCubit(this._discoverRepo) : super(TopRatedTvSeriesInitial());

  Future<void> fetchTopRatedTvSeries() async {
    emit(TopRatedTvSeriesLoading());
    var result = await _discoverRepo.fetchTopRatedTvSeries();
    result.fold(
      (failure) => emit(
        TopRatedTvSeriesFailure(
          failure.errorMessage,
        ),
      ),
      (tvSeries) => emit(
        TopRatedTvSeriesSuccess(
          tvSeries,
        ),
      ),
    );
  }

  Future<void> fetchCrimeTvSeries() async {
    emit(TopRatedTvSeriesLoading());
    var result = await _discoverRepo.fetchCrimeTvSeries();
    result.fold(
      (failure) => emit(
        TopRatedTvSeriesFailure(
          failure.errorMessage,
        ),
      ),
      (tvSeries) => emit(
        TopRatedTvSeriesSuccess(
          tvSeries,
        ),
      ),
    );
  }

  Future<void> fetchDocumentaryTvSeries() async {
    emit(TopRatedTvSeriesLoading());
    var result = await _discoverRepo.fetchDocumentaryTvSeries();
    result.fold(
      (failure) => emit(
        TopRatedTvSeriesFailure(
          failure.errorMessage,
        ),
      ),
      (tvSeries) => emit(
        TopRatedTvSeriesSuccess(
          tvSeries,
        ),
      ),
    );
  }

  Future<void> fetchDramaTvSeries() async {
    emit(TopRatedTvSeriesLoading());
    var result = await _discoverRepo.fetchDramaTvSeries();
    result.fold(
      (failure) => emit(
        TopRatedTvSeriesFailure(
          failure.errorMessage,
        ),
      ),
      (tvSeries) => emit(
        TopRatedTvSeriesSuccess(
          tvSeries,
        ),
      ),
    );
  }

  Future<void> fetchKidsTvSeries() async {
    emit(TopRatedTvSeriesLoading());
    var result = await _discoverRepo.fetchKidsTvSeries();
    result.fold(
      (failure) => emit(
        TopRatedTvSeriesFailure(
          failure.errorMessage,
        ),
      ),
      (tvSeries) => emit(
        TopRatedTvSeriesSuccess(
          tvSeries,
        ),
      ),
    );
  }
}
