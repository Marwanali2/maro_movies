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
  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchActionMovies() async {
    try {
      Map<String, dynamic> actionMoviesMap =
          await apiServices.getGenres(endPoint: 'discover/movie', genreId: 28);
      List<TopRatedMoviesModel> actionMoviesList = [];
      for (var item in actionMoviesMap['results']) {
        actionMoviesList.add(
          TopRatedMoviesModel.fromJson(
            item,
          ),
        );
      }
      return right(actionMoviesList);
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
  Future<Either<Failure, List<TopRatedMoviesModel>>> fetchComedyMovies() async {
    try {
      Map<String, dynamic> actionMoviesMap =
          await apiServices.getGenres(endPoint: 'discover/movie', genreId: 35);
      List<TopRatedMoviesModel> actionMoviesList = [];
      for (var item in actionMoviesMap['results']) {
        actionMoviesList.add(
          TopRatedMoviesModel.fromJson(
            item,
          ),
        );
      }
      return right(actionMoviesList);
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
  Future<Either<Failure, List<TopRatedMoviesModel>>>
      fetchFantasyMovies() async {
    try {
      Map<String, dynamic> actionMoviesMap =
          await apiServices.getGenres(endPoint: 'discover/movie', genreId: 14);
      List<TopRatedMoviesModel> actionMoviesList = [];
      for (var item in actionMoviesMap['results']) {
        actionMoviesList.add(
          TopRatedMoviesModel.fromJson(
            item,
          ),
        );
      }
      return right(actionMoviesList);
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
  Future<Either<Failure, List<TopRatedMoviesModel>>>
      fetchHistoryMovies() async {
    try {
      Map<String, dynamic> actionMoviesMap =
          await apiServices.getGenres(endPoint: 'discover/movie', genreId: 36);
      List<TopRatedMoviesModel> actionMoviesList = [];
      for (var item in actionMoviesMap['results']) {
        actionMoviesList.add(
          TopRatedMoviesModel.fromJson(
            item,
          ),
        );
      }
      return right(actionMoviesList);
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
      Map<String, dynamic> topRatedTvSeriesMab = await apiServices.getTopRated(
        endPoint: "tv/top_rated",
      );
      List<TopRatedTvSeriesModel> topRatedTvSeriesList = [];
      for (var item in topRatedTvSeriesMab['results']) {
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
  Future<Either<Failure, List<TopRatedTvSeriesModel>>>
      fetchCrimeTvSeries() async {
    try {
      Map<String, dynamic> topRatedTvSeriesMab =
          await apiServices.getGenres(endPoint: "tv/top_rated", genreId: 80);
      List<TopRatedTvSeriesModel> topRatedTvSeriesList = [];
      for (var item in topRatedTvSeriesMab['results']) {
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
  Future<Either<Failure, List<TopRatedTvSeriesModel>>>
      fetchDocumentaryTvSeries() async {
    try {
      Map<String, dynamic> topRatedTvSeriesMab =
          await apiServices.getGenres(endPoint: "tv/top_rated", genreId: 99);
      List<TopRatedTvSeriesModel> topRatedTvSeriesList = [];
      for (var item in topRatedTvSeriesMab['results']) {
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
  Future<Either<Failure, List<TopRatedTvSeriesModel>>>
      fetchDramaTvSeries() async {
    try {
      Map<String, dynamic> topRatedTvSeriesMab =
          await apiServices.getGenres(endPoint: "tv/top_rated", genreId: 18);
      List<TopRatedTvSeriesModel> topRatedTvSeriesList = [];
      for (var item in topRatedTvSeriesMab['results']) {
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
  Future<Either<Failure, List<TopRatedTvSeriesModel>>>
      fetchKidsTvSeries() async {
    try {
      Map<String, dynamic> topRatedTvSeriesMab =
          await apiServices.getGenres(endPoint: "tv/top_rated", genreId: 10762);
      List<TopRatedTvSeriesModel> topRatedTvSeriesList = [];
      for (var item in topRatedTvSeriesMab['results']) {
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
}
