


import 'package:flutter/material.dart';
import 'package:stroll_task1/core/extensions/context_extensions.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight,
      width: context.screenWidth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Color.fromRGBO(13, 14, 18, 0.28),
            Color.fromRGBO(11, 12, 15, 0.64),
            Color.fromRGBO(9, 11, 13, 0.8),
            Colors.black,
          ],
          stops: [0.4397, 0.486, 0.5252, 0.5514, 0.5694],
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: context.screenHeight,
            width: context.screenWidth,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.0, -0.7),
                radius: 1.0,
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.045),
                  Color.fromRGBO(0, 0, 0, 0.107193),
                  Color.fromRGBO(0, 0, 0, 0.135),
                  Color.fromRGBO(0, 0, 0, 0.195),
                  Color.fromRGBO(0, 0, 0, 0.24),
                ],
                stops: [0.0, 0.6328, 0.7566, 0.8844, 1.0],
              ),
            ),
          ),
          Container(
            height: context.screenHeight,
            width: context.screenWidth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.4),
                  Color.fromRGBO(0, 0, 0, 0.123359),
                  Colors.transparent,
                ],
                stops: [0.0, 0.14, 0.234],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
