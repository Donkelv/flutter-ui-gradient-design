


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/extensions/string_extensions.dart';
import 'package:stroll_task1/core/extensions/theme_extension.dart';
import 'package:stroll_task1/core/theme/colors.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Stroll Bonfire",
              style: context.textTheme.headlineLarge!.copyWith(
                color: StrollAppColors.primary1,
                shadows: [
                  const Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 7.9,
                    color: Color(0x33000000), // Shadow #00000033
                  ),
                  const Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 2.0,
                    color: Color(0xFFBEBEBE), // Shadow #BEBEBE
                  ),
                  const Shadow(
                    offset: Offset(0, 1),
                    blurRadius: 2.0,
                    color: Color(0x8024232F), // Shadow #24232F80
                  ),
                ],
              ),
            ),
            WebsafeSvg.asset("caret_down".svg)
          ],
        ),
        10.0.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WebsafeSvg.asset("clock".svg),
            5.0.horizontalSpace,
            Text(
              "22h 00m",
              style: context.textTheme.bodySmall!.copyWith(
                color: StrollAppColors.white,
                shadows: [
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 1,
                    color: const Color(0xFF000000).withOpacity(0.3),
                  ),
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4.0,
                    color: const Color(0xFF000000).withOpacity(0.2),
                  ),
                ],
              ),
            ),
            10.0.horizontalSpace,
            WebsafeSvg.asset("person".svg),
            5.0.horizontalSpace,
            Text(
              "103",
              style: context.textTheme.bodySmall!.copyWith(
                color: StrollAppColors.white,
                shadows: [
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 1,
                    color: const Color(0xFF000000).withOpacity(0.3),
                  ),
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4.0,
                    color: const Color(0xFF000000).withOpacity(0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
