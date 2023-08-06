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

abstract class ActionMoviesState extends Equatable {
  const ActionMoviesState();

  @override
  List<Object> get props => [];
}

class ActionMoviesInitial extends ActionMoviesState {}

class ActionMoviesLoading extends ActionMoviesState {}

class ActionMoviesSuccess extends ActionMoviesState {
  final List<TopRatedMoviesModel> actionMovies;

  const ActionMoviesSuccess(this.actionMovies);
}

class ActionMoviesFailure extends ActionMoviesState {
  final String errorMessage;

  const ActionMoviesFailure(this.errorMessage);
}
