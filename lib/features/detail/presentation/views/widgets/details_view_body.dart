import 'package:marovies/features/detail/presentation/views/widgets/related_movies_list_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'line.dart';
import 'movie_minuets_and_rating.dart';
import 'movie_name_details.dart';
import 'movie_poster_details.dart';
import 'movie_synopsis.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoviePosterDetails(),
          SizedBox(
            height: 10,
          ),
          MovieNameDetails(),
          SizedBox(
            height: 15,
          ),
          MovieMinuetsAndRatingDetails(),
          SizedBox(
            height: 10,
          ),
          Line(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'Synopsis',
              style: TextStyles.textStyle24,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          MovieSynopsis(),
          SizedBox(
            height: 10,
          ),
          Line(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'Related Movies',
              style: TextStyles.textStyle24,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RelatedMoviesListView()
        ],
      ),
    );
  }
}
