part of 'top_rated_movies_cubit.dart';

abstract class TopRatedMoviesState extends Equatable {
  const TopRatedMoviesState();

  @override
  List<Object> get props => [];
}

class TopRatedMoviesInitial extends TopRatedMoviesState {}

class TopRatedMoviesLoading extends TopRatedMoviesState {}

class TopRatedMoviesSuccess extends TopRatedMoviesState {
  final List<TopRatedMoviesModel> topRatedMovies;

  const TopRatedMoviesSuccess(this.topRatedMovies);
}

class TopRatedMoviesFailure extends TopRatedMoviesState {
  final String errorMessage;

  const TopRatedMoviesFailure(this.errorMessage);
}
