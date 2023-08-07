part of 'top_rated_movies_cubit.dart';

abstract class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

class MoviesInitial extends MoviesState {}

class MoviesLoading extends MoviesState {}

class MoviesSuccess extends MoviesState {
  final List<TopRatedMoviesModel> topRatedMovies;

  const MoviesSuccess(this.topRatedMovies);
}

class MoviesFailure extends MoviesState {
  final String errorMessage;

  const MoviesFailure(this.errorMessage);
}
