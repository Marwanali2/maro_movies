import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Lottie.asset(
          "assets/lottie_json_animations/12434-no-connection.json",
        ),
      ),
    );
  }
}
