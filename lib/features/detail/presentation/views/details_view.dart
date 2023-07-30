import 'package:flutter/material.dart';
import 'package:marovies/features/detail/presentation/views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsViewBody(),
    );
  }
}
