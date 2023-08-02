import 'package:dartz/dartz.dart';
import 'package:marovies/features/home/data/models/movie_model.dart';

import '../../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieModel>>> fetchTrendingMovies();
}
