import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:marovies/features/discover/data/models/repo/discover_repo_impl.dart';

import '../../features/home/data/models/repo/home_repo_impl.dart';
import 'api_services.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      ApiServices(
        Dio(),
      ),
    ),
  );
  getIt.registerSingleton<DiscoverRepoImpl>(
    DiscoverRepoImpl(
      ApiServices(
        Dio(),
      ),
    ),
  );
}
