import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marovies/features/discover/data/models/repo/discover_repo.dart';
import 'package:marovies/features/discover/data/models/top_rated_movies_model.dart';

part 'top_rated_movies_state.dart';

class TopRatedMoviesCubit extends Cubit<TopRatedMoviesState> {
  final DiscoverRepo _discoverRepo;

  TopRatedMoviesCubit(this._discoverRepo) : super(TopRatedMoviesInitial());

  Future<void> fetchTopRatedMovies() async {
    emit(TopRatedMoviesLoading());
    var result = await _discoverRepo.fetchTopRatedMovies();
    result.fold(
      (failure) => emit(TopRatedMoviesFailure(failure.errorMessage)),
      (movies) => emit(
        TopRatedMoviesSuccess(
          movies,
        ),
      ),
    );
  }

  Future<void> fetchActionMovies() async {
    emit(TopRatedMoviesLoading());
    var result = await _discoverRepo.fetchActionMovies();
    result.fold(
      (failure) => emit(TopRatedMoviesFailure(failure.errorMessage)),
      (movies) => emit(
        TopRatedMoviesSuccess(
          movies,
        ),
      ),
    );
  }

  Future<void> fetchComedyMovies() async {
    emit(TopRatedMoviesLoading());
    var result = await _discoverRepo.fetchComedyMovies();
    result.fold(
      (failure) => emit(TopRatedMoviesFailure(failure.errorMessage)),
      (movies) => emit(
        TopRatedMoviesSuccess(
          movies,
        ),
      ),
    );
  }

  Future<void> fetchFantasyMovies() async {
    emit(TopRatedMoviesLoading());
    var result = await _discoverRepo.fetchFantasyMovies();
    result.fold(
      (failure) => emit(TopRatedMoviesFailure(failure.errorMessage)),
      (movies) => emit(
        TopRatedMoviesSuccess(
          movies,
        ),
      ),
    );
  }

  Future<void> fetchHistoryMovies() async {
    emit(TopRatedMoviesLoading());
    var result = await _discoverRepo.fetchHistoryMovies();
    result.fold(
      (failure) => emit(TopRatedMoviesFailure(failure.errorMessage)),
      (movies) => emit(
        TopRatedMoviesSuccess(
          movies,
        ),
      ),
    );
  }
}
