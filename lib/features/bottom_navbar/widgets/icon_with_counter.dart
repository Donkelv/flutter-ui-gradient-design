import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/extensions/theme_extension.dart';
import 'package:stroll_task1/core/theme/colors.dart';
import 'package:websafe_svg/websafe_svg.dart';

class IconWithCounterWidget extends StatelessWidget {
  final String iconPath;
  final int? counter;
  const IconWithCounterWidget(
      {super.key, required this.iconPath, this.counter});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Main SVG icon
        WebsafeSvg.asset(
          iconPath,
          height: 24,
          width: 24,
        ),
        if (counter != null && counter! > 0)
          Positioned(
            top: -6,
            right: -6,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: EdgeInsets.only(
                top: 2.0.h,
                right: 4.0.w,
                bottom: 2.0.h,
                left: 4.0.w,
              ),
              decoration: BoxDecoration(
                color: StrollAppColors.primary3,
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  width: 1.4,
                ),
              ),
              child: Text(
                counter.toString(),
                style: context.textTheme.bodySmall!.copyWith(
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
