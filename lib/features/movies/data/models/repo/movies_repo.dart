import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../top_rated_movies_model.dart';

abstract class MoviesRepo {
  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchTopRatedMovies();

  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchActionMovies();

  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchComedyMovies();

  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchFantasyMovies();

  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchHistoryMovies();
}
