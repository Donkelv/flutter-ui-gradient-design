import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stroll_task1/core/extensions/string_extensions.dart';
import 'package:stroll_task1/core/extensions/theme_extension.dart';
import 'package:stroll_task1/core/theme/colors.dart';
import 'package:stroll_task1/features/home/presentation/widgets/build_svg_with_shadow.dart';


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
                    color: Color(0x33000000), 
                  ),
                  const Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 2.0,
                    color: Color(0xFFBEBEBE), 
                  ),
                  const Shadow(
                    offset: Offset(0, 1),
                    blurRadius: 2.0,
                    color: Color(0x8024232F),
                  ),
                ],
              ),
            ),
            BuildSvgWithShadowPrimary(assetPath: "caret_down".svg,)
            
          ],
        ),
        10.0.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BuildSvgWithShadowWhite(assetPath: "clock".svg),
            5.0.horizontalSpace,
            Text(
              "22h 00m",
              style: context.textTheme.bodySmall!.copyWith(
                color: StrollAppColors.white,
                shadows: [
                  const Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 1,
                    color: Color(0x4D000000),
                  ),
                  const Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 4,
                    color: Color(0x33000000),
                  ),
                ],
              ),
            ),
            10.0.horizontalSpace,
            BuildSvgWithShadowWhite(assetPath: "person".svg),
            5.0.horizontalSpace,
            Text(
              "103",
              style: context.textTheme.bodySmall!.copyWith(
                color: StrollAppColors.white,
                shadows: [
                  const Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 1,
                    color: Color(0x4D000000),
                  ),
                  const Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 4,
                    color: Color(0x33000000),
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
