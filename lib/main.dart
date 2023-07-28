import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marovies/features/discover/presentation/views/discover_view.dart';

import 'core/utils/styles.dart';
import 'features/home/presentation/views/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle( // do run not hot  realod
    const SystemUiOverlayStyle(
      statusBarColor: ColorStyles
          .kPrimaryColor, // Set the status bar color to kPrimaryColor
      statusBarIconBrightness:
      Brightness.light, // Set the status bar icon color to light
    ),
  );

  runApp(const MaroviesApp());
}

class MaroviesApp extends StatelessWidget {
  const MaroviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maro movies app',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorStyles.kPrimaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme:GoogleFonts.latoTextTheme(ThemeData.dark().textTheme),
      ),
      home:const DiscoverView() // const HomeView(),
    );
  }
}

