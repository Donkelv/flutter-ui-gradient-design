import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/theme/colors.dart';

class AppTextFormFieldTheme {
  AppTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme().copyWith(
    contentPadding: EdgeInsets.all(12.r),
    filled: true,
    fillColor: StrollAppColors.white.withOpacity(0.15000000596046448),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    helperStyle: const TextStyle().copyWith(
      color: StrollAppColors.white,
      fontFamily: "Proxima Nova",
      fontSize: 12.sp,
      // height: (26 / 12).sp,
      fontVariations: [const FontVariation('wght', 400)],
    ),
    counterStyle: const TextStyle().copyWith(
      color: StrollAppColors.white,
      fontSize: 12.sp,
      fontFamily: "Proxima Nova",
      // height: (26 / 12).sp,
      fontVariations: [const FontVariation('wght', 400)],
    ),
    labelStyle: const TextStyle().copyWith(
      color: StrollAppColors.white,
      fontSize: 16.sp,
      fontFamily: "Proxima Nova",
      // height: (26 / 12).sp,
      fontVariations: [const FontVariation('wght', 400)],
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: StrollAppColors.white,
      fontSize: 12.sp,
      fontFamily: "Proxima Nova",
      fontVariations: [const FontVariation('wght', 400)],
    ),
    alignLabelWithHint: false,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    hintStyle: const TextStyle().copyWith(
      color: StrollAppColors.white,
      fontSize: 16.sp,
      fontFamily: "Proxima Nova",
      fontVariations: [const FontVariation('wght', 400)],
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: StrollAppColors.white.withOpacity(0.15),
      ),
    ),
    prefixStyle: const TextStyle().copyWith(
      color: StrollAppColors.white,
      fontSize: 16.sp,
      fontFamily: "Proxima Nova",
      fontVariations: [const FontVariation('wght', 400)],
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: const BorderSide(
        color: StrollAppColors.white,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: const BorderSide(
        color: StrollAppColors.white,
      ),
    ),
  );
}
