import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/theme/colors.dart';
import 'package:websafe_svg/websafe_svg.dart';

class BuildSvgWithShadowWhite extends StatelessWidget {
  final String assetPath;
  const BuildSvgWithShadowWhite({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Shadow 1
        Positioned(
          top: 1,
          left: 1,
          child: WebsafeSvg.asset(
            assetPath,
            height: 15.h,
            width: 13.w,
            colorFilter:
                const ColorFilter.mode(Color(0x4D000000), BlendMode.srcIn),
          ),
        ),
        // Shadow 2
        Positioned(
          top: 1,
          left: 1,
          child: WebsafeSvg.asset(
            assetPath,
            height: 15.h,
            width: 13.w,
            colorFilter:
                const ColorFilter.mode(Color(0x33000000), BlendMode.srcIn),
          ),
        ),
        // Main SVG
        WebsafeSvg.asset(
          assetPath,
          height: 15.h,
          width: 13.w,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ],
    );
  }
}

class BuildSvgWithShadowPrimary extends StatelessWidget {
  final String assetPath;
  const BuildSvgWithShadowPrimary({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Shadow 1
        Positioned(
          top: 1,
          left: 1,
          child: WebsafeSvg.asset(
            assetPath,
            height: 40.h,
            width: 40.w,
            colorFilter:
                const ColorFilter.mode(Color(0x33000000), BlendMode.srcIn),
          ),
        ),
        // Shadow 2
        Positioned(
          top: 0.5,
          left: 0.5,
          child: WebsafeSvg.asset(
            assetPath,
            height: 40.h,
            width: 40.w,
            colorFilter:
                const ColorFilter.mode(Color(0xFFBEBEBE), BlendMode.srcIn),
          ),
        ),
       
        // Main SVG
        WebsafeSvg.asset(
          assetPath,
          height: 40.h,
          width: 40.w,
          colorFilter:
              const ColorFilter.mode(StrollAppColors.primary1, BlendMode.srcIn),
        ),
      ],
    );
  }
}
