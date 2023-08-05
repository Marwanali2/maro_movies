import 'package:dartz/dartz.dart';
import 'package:marovies/features/discover/data/models/top_rated_movies_model.dart';
import 'package:marovies/features/discover/data/models/top_rated_tv_series_model.dart';

import '../../../../../core/errors/failure.dart';

abstract class DiscoverRepo {
  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchTopRatedMovies();

  Future<Either<Failure, List<TopRatedTvSeriesModel>>> fetchTopRatedTvSeries();

  Future<Either<Failure, List<TopRatedTvSeriesModel>>> fetchDocumentary();

  Future<Either<Failure, List<TopRatedTvSeriesModel>>> fetchSports();
}
