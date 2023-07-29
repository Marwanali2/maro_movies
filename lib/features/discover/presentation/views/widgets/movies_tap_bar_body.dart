import 'package:flutter/material.dart';
import 'movie_container.dart';

class MoviesTapBarBody extends StatelessWidget {
  const MoviesTapBarBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 30,
                  bottom: 30,
                ),
                child: MovieContainer(
                    imageUrl:
                        'https://th.bing.com/th/id/OIP.jXuX7WlWVthy71Ymhb0UWQHaIt?pid=ImgDet&rs=1'),
              ),
              MovieContainer(
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.jXuX7WlWVthy71Ymhb0UWQHaIt?pid=ImgDet&rs=1'),
            ],
          );
        },
      ),
    );
  }
}