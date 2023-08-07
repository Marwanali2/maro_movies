import 'package:flutter/material.dart';
import 'package:marovies/features/movies/presentation/views/widgets/search_box.dart';
import 'package:marovies/features/movies/presentation/views/widgets/top_discover_bar.dart';

class DiscoverViewBody extends StatelessWidget {
  const DiscoverViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopDiscoverBar(
            gradientText: "Find Movies, Tv series, ", text: "and more.."),
        SizedBox(height: 25),
        SearchBox(),
        SizedBox(height: 20),
      ],
    );
  }
}
