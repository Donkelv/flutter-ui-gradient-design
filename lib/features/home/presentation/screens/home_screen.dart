import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stroll_task1/core/extensions/context_extensions.dart';
import 'package:stroll_task1/core/extensions/string_extensions.dart';
import 'package:stroll_task1/features/home/presentation/widgets/gradient_widget.dart';
import 'package:stroll_task1/features/home/presentation/widgets/home_bottom_widgets.dart';
import 'package:stroll_task1/features/home/presentation/widgets/home_top_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight,
      width: context.screenWidth,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          Positioned.fill(
            top: -280.0.h,
            child: Image.asset(
              "background".png,
              width: context.screenWidth,
              height: context.screenHeight * .6,
              fit: BoxFit.contain,
            ),
          ),
          const Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: GradientWidget(),
          ),
          Positioned(
            top: 0.0,
            left: 00.0,
            right: 0.0,
            child: SizedBox(
              height: context.screenHeight,
              width: context.screenWidth,
              child: SafeArea(
                top: true,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const HomeTopWidget(),
                      SizedBox(
                        height: context.screenHeight * .34,
                      ),
                      const HomeBottomWidget(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
