import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:marovies/core/errors/failure.dart';
import 'package:marovies/core/utils/api_services.dart';
import 'package:marovies/features/movies/data/models/repo/movies_repo.dart';

import '../top_rated_movies_model.dart';

class MoviesRepoImpl implements MoviesRepo {
  final ApiServices apiServices;

  MoviesRepoImpl(this.apiServices);

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
}
