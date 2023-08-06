import 'package:dartz/dartz.dart';
import 'package:marovies/features/discover/data/models/top_rated_movies_model.dart';
import 'package:marovies/features/discover/data/models/top_rated_tv_series_model.dart';

import '../../../../../core/errors/failure.dart';

abstract class DiscoverRepo {
  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchTopRatedMovies();

  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchActionMovies();

  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchComedyMovies();

  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchFantasyMovies();

  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchHistoryMovies();

  Future<Either<Failure, List<TopRatedTvSeriesModel>>> fetchTopRatedTvSeries();

  Future<Either<Failure, List<TopRatedTvSeriesModel>>> fetchCrimeTvSeries();

  Future<Either<Failure, List<TopRatedTvSeriesModel>>>
      fetchDocumentaryTvSeries();

  Future<Either<Failure, List<TopRatedTvSeriesModel>>> fetchDramaTvSeries();

  Future<Either<Failure, List<TopRatedTvSeriesModel>>> fetchKidsTvSeries();
}
