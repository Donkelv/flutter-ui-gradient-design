import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stroll_task1/core/theme/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme darkTextTheme = TextTheme(
    // H1
    headlineMedium: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 28.sp,
      // height: (40 / 32).sp,
      color: StrollAppColors.white,
      fontWeight: FontWeight.w400,
      height: 1,
      fontVariations: [const FontVariation('wght', 400)],
    ),
    // Title1
    headlineLarge: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 34.sp,
      color: StrollAppColors.white,
      fontWeight: FontWeight.w700,
      height: 1,
      fontVariations: [const FontVariation('wght', 500)],
    ),
    headlineSmall: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 20.sp,
      color: StrollAppColors.white,
      height: 1,
      // fontWeight: FontWeight.w500,
      fontVariations: [const FontVariation('wght', 500)],
    ),

    // Body
    titleMedium: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 28.sp,
      color: StrollAppColors.white,
      fontWeight: FontWeight.w700,
      height: 1,
      fontVariations: [const FontVariation('wght', 400)],
    ),
    // Title1-Bold
    titleLarge: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 32.sp,
      color: StrollAppColors.white,
      fontWeight: FontWeight.w700,
      height: 1,
      fontVariations: [const FontVariation('wght', 700)],
    ),
    titleSmall: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 24.sp,
      color: StrollAppColors.white,
      fontWeight: FontWeight.w700,
      height: 1,
      fontVariations: [const FontVariation('wght', 700)],
    ),

    // Title2-Bold
    labelLarge: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 18.sp,
      color: StrollAppColors.white,
      height: 1,
      // fontWeight: FontWeight.w700,
      fontVariations: [const FontVariation('wght', 700)],
    ),
    // Body2-Bold
    labelMedium: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 16.sp,
      color: StrollAppColors.white,
      height: 1,
      // fontWeight: FontWeight.w400,
      fontVariations: [const FontVariation('wght', 400)],
    ),
    // Body2
    labelSmall: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 14.sp,
      color: StrollAppColors.white,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1,
      fontVariations: [const FontVariation('wght', 400)],
    ),
    // Headline-Bold
    bodyLarge: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 20.sp,
      color: StrollAppColors.white,
      height: 1,
      // fontWeight: FontWeight.w700,
      fontVariations: [const FontVariation('wght', 700)],
    ),
    // Headline
    bodyMedium: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 14.sp,
      color: StrollAppColors.white,
      fontWeight: FontWeight.w500,
      height: 1,
      fontVariations: [const FontVariation('wght', 500)],
    ),
    // Body-Bold
    bodySmall: const TextStyle().copyWith(
      fontFamily: 'Proxima Nova',
      fontSize: 12.sp,
      color: StrollAppColors.white,
      fontWeight: FontWeight.w500,
      height: 1,
      fontVariations: [const FontVariation('wght', 500)],
    ),
  );
}
