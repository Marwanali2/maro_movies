import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marovies/features/home/data/models/repo/home_repo_impl.dart';
import 'package:marovies/features/home/presentation/views/manager/trending_movies_cubit/trending_movies_cubit.dart';
import 'package:marovies/simple_bloc_observer.dart';

import 'core/utils/service_locator.dart';
import 'core/utils/styles.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/presentation/views/widgets/app_bottom_navigation_bar.dart';
import 'features/movies/data/models/repo/movies_repo_impl.dart';
import 'features/movies/presentation/views/managers/top_rated_movies_cubit/top_rated_movies_cubit.dart';

void main() {
  setupServiceLocator();
  SystemChrome.setSystemUIOverlayStyle(
    // do run not hot  realod
    const SystemUiOverlayStyle(
      statusBarColor: ColorStyles
          .kPrimaryColor, // Set the status bar color to kPrimaryColor
      statusBarIconBrightness:
          Brightness.light, // Set the status bar icon color to light
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(const MaroviesApp());
}

class MaroviesApp extends StatelessWidget {
  const MaroviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TrendingMoviesCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchTrendingMovies(),
        ),
        BlocProvider(
            create: (context) => MoviesCubit(getIt.get<MoviesRepoImpl>())),
        BlocProvider(
          create: (context) => TopRatedTvSeriesCubit(
            getIt.get<DiscoverRepoImpl>(),
          )..fetchCrimeTvSeries(),
        ),
      ],
      child: MaterialApp(
        title: 'Maro movies app',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorStyles.kPrimaryColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
          useMaterial3: true,
          textTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme),
        ),
        home: const AppBottomNavigationBar(),
      ),
    );
  }
}
