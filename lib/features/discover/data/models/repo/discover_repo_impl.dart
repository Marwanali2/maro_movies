import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:marovies/core/errors/failure.dart';
import 'package:marovies/core/utils/api_services.dart';
import 'package:marovies/features/discover/data/models/repo/discover_repo.dart';
import 'package:marovies/features/discover/data/models/top_rated_tv_series_model.dart';

import '../top_rated_movies_model.dart';

class DiscoverRepoImpl implements DiscoverRepo {
  final ApiServices apiServices;

  DiscoverRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<TopRatedMoviesModel>>>
      fetchTopRatedMovies() async {
    try {
      Map<String, dynamic> trendingMoviesMab = await apiServices.getTopRated(
        endPoint: "movie/top_rated",
      );
      List<TopRatedMoviesModel> topRatedMoviesList = [];
      for (var item in trendingMoviesMab['results']) {
        topRatedMoviesList.add(
          TopRatedMoviesModel.fromJson(item),
        );
      }
      return Right(topRatedMoviesList);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(
          ServerFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<TopRatedTvSeriesModel>>>
      fetchTopRatedTvSeries() async {
    try {
      Map<String, dynamic> trendingTvSeriesMab = await apiServices.getTopRated(
        endPoint: "tv/series_id/recommendations?language=en-US&page=1",
      );
      List<TopRatedTvSeriesModel> topRatedTvSeriesList = [];
      for (var item in trendingTvSeriesMab['results']) {
        topRatedTvSeriesList.add(
          TopRatedTvSeriesModel.fromJson(item),
        );
      }
      return Right(topRatedTvSeriesList);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(
          ServerFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<TopRatedTvSeriesModel>>> fetchDocumentary() {
    // TODO: implement fetchDocumentary
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<TopRatedTvSeriesModel>>> fetchSports() {
    // TODO: implement fetchSports
    throw UnimplementedError();
  }
}
