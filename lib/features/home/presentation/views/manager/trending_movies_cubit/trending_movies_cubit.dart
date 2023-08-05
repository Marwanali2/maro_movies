import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marovies/features/home/data/models/movie_model.dart';
import 'package:marovies/features/home/data/models/repo/home_repo.dart';

part 'trending_movies_state.dart';

class TrendingMoviesCubit extends Cubit<TrendingMoviesState> {
  TrendingMoviesCubit(this._homeRepo) : super(TrendingMoviesInitial());
  final HomeRepo _homeRepo;

  Future<void> fetchTrendingMovies() async {
    emit(TrendingMoviesLoading());
    var result = await _homeRepo.fetchTrendingMovies();
    result.fold(
      (failure) => emit(
        TrendingMoviesFailure(
          failure.errorMessage,
        ),
      ),
      (movies) => emit(
        TrendingMoviesSuccess(
          movies,
        ),
      ),
    );
  }
}
