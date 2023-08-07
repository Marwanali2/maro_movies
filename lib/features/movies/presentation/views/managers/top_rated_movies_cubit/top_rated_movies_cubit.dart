import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marovies/features/movies/data/models/repo/movies_repo.dart';

import '../../../../data/models/top_rated_movies_model.dart';

part 'top_rated_movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  final MoviesRepo _moviesRepo;

  MoviesCubit(this._moviesRepo) : super(MoviesInitial());

  Future<void> fetchTopRatedMovies() async {
    emit(MoviesLoading());
    var result = await _moviesRepo.fetchTopRatedMovies();
    result.fold(
      (failure) => emit(MoviesFailure(failure.errorMessage)),
      (movies) => emit(
        MoviesSuccess(
          movies,
        ),
      ),
    );
  }

  Future<void> fetchActionMovies() async {
    emit(MoviesLoading());
    var result = await _moviesRepo.fetchActionMovies();
    result.fold(
      (failure) => emit(MoviesFailure(failure.errorMessage)),
      (movies) => emit(
        MoviesSuccess(
          movies,
        ),
      ),
    );
  }

  Future<void> fetchComedyMovies() async {
    emit(MoviesLoading());
    var result = await _moviesRepo.fetchComedyMovies();
    result.fold(
      (failure) => emit(MoviesFailure(failure.errorMessage)),
      (movies) => emit(
        MoviesSuccess(
          movies,
        ),
      ),
    );
  }

  Future<void> fetchFantasyMovies() async {
    emit(MoviesLoading());
    var result = await _moviesRepo.fetchFantasyMovies();
    result.fold(
      (failure) => emit(MoviesFailure(failure.errorMessage)),
      (movies) => emit(
        MoviesSuccess(
          movies,
        ),
      ),
    );
  }

  Future<void> fetchHistoryMovies() async {
    emit(MoviesLoading());
    var result = await _moviesRepo.fetchHistoryMovies();
    result.fold(
      (failure) => emit(MoviesFailure(failure.errorMessage)),
      (movies) => emit(
        MoviesSuccess(
          movies,
        ),
      ),
    );
  }
}
