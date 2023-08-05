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
}
