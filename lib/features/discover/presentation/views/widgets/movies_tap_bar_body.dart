import 'package:flutter/material.dart';
import 'package:marovies/features/discover/presentation/views/widgets/tap_bar_body.dart';

class MoviesTapBarBody extends StatelessWidget {
  const MoviesTapBarBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TapBarBody(
      imageUrl1:
          'https://th.bing.com/th/id/OIP.jXuX7WlWVthy71Ymhb0UWQHaIt?pid=ImgDet&rs=1',
      imageUrl2:
          'https://th.bing.com/th/id/OIP.jXuX7WlWVthy71Ymhb0UWQHaIt?pid=ImgDet&rs=1',
    );
  }
}