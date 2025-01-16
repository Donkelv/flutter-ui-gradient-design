import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/theme/colors.dart';

class AppButtonTheme {
  AppButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      disabledBackgroundColor: StrollAppColors.white.withOpacity(0.3),
      disabledForegroundColor: StrollAppColors.white2,
      backgroundColor: StrollAppColors.primary,
      foregroundColor: StrollAppColors.white,
      elevation: 10,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      //shadowColor: const Color.fromRGBO(6, 47, 63, 0.30),
      textStyle: const TextStyle().copyWith(
        fontFamily: 'TT-Norms',
        fontSize: 18.sp,
        color: StrollAppColors.white,
        fontWeight: FontWeight.w700,
        fontVariations: [const FontVariation('wght', 700)],
      ),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(100.r),
        ),
        side: const BorderSide(color: Colors.transparent),
      ),
    ),
  );
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      disabledBackgroundColor: StrollAppColors.white.withOpacity(0.3),
      disabledForegroundColor: StrollAppColors.primary.withOpacity(0.3),
      backgroundColor: StrollAppColors.primary,
      foregroundColor: StrollAppColors.white,
      elevation: 10,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      shadowColor: const Color.fromRGBO(6, 47, 63, 0.30),
      textStyle: const TextStyle().copyWith(
        fontFamily: 'TT-Norms',
        fontSize: 18.sp,
        color: StrollAppColors.white,
        fontWeight: FontWeight.w700,
        fontVariations: [const FontVariation('wght', 700)],
      ),
      side: BorderSide(
        color: StrollAppColors.white.withOpacity(0.20000000298023224),
        width: 1.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(100.r),
        ),
        side: BorderSide(
          color: StrollAppColors.white.withOpacity(0.20000000298023224),
          width: 1.0,
        ),
      ),
    ),
  );
}
