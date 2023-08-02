import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:marovies/core/errors/failure.dart';
import 'package:marovies/core/utils/api_services.dart';
import 'package:marovies/features/home/data/models/movie_model.dart';
import 'package:marovies/features/home/data/models/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<MovieModel>>> fetchTrendingMovies() async {
    try {
      Map<String, dynamic> trendingMoviesMab = await apiServices.get(
        endPoint: 'movie',
      );
      List<MovieModel> trendingMoviesList = [];
      for (var item in trendingMoviesMab['results']) {
        trendingMoviesList.add(
          MovieModel.fromJson(item),
        );
      }
      return Right(trendingMoviesList);
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
