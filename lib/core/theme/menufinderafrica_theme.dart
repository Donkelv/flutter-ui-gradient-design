import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/theme/button_theme.dart';
import 'package:stroll_task1/core/theme/text_theme.dart';

import 'colors.dart';

class MenufinderafricaTheme {
  static ThemeData getLightThemeData(BuildContext context) {
    return _lightThemeData(context);
  }

  static ThemeData getDarkThemeData(BuildContext context) {
    return _darkThemeData(context);
  }

  static ThemeData _lightThemeData(BuildContext context) {
    return ThemeData(
      textTheme: AppTextTheme.darkTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: StrollAppColors.black1,
        iconTheme: IconThemeData(
          color: StrollAppColors.black1,
        ),
      ),
      chipTheme: Theme.of(context).chipTheme.copyWith(
          labelStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: StrollAppColors.black1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          selectedColor: StrollAppColors.primary,
          backgroundColor: StrollAppColors.black1),
      canvasColor: StrollAppColors.white2,
      elevatedButtonTheme: AppButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: AppButtonTheme.lightOutlinedButtonTheme,
      dialogBackgroundColor: StrollAppColors.black1,
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
            menuStyle: MenuStyle(
              padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: 16.w),
              ),
              shape: WidgetStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                (states) {
                  if (states.contains(WidgetState.pressed)) {
                    return StrollAppColors.white2;
                  } else {
                    return StrollAppColors.white2;
                  }
                },
              ),
            ),
          ),
      radioTheme: RadioThemeData(
        fillColor:
            WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return StrollAppColors.white2.withOpacity(.5);
          }
          if (states.contains(WidgetState.selected)) {
            return StrollAppColors.primary;
          }
          return StrollAppColors.white2;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        side: WidgetStateBorderSide.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return BorderSide(
                width: 1.0, color: StrollAppColors.white2.withOpacity(.5));
          }
          if (states.contains(WidgetState.selected)) {
            return const BorderSide(width: 1.0, color: StrollAppColors.white2);
          }
          return const BorderSide(width: 1.0, color: StrollAppColors.white2);
        }),
        fillColor:
            WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return null;
          }
          if (states.contains(WidgetState.selected)) {
            return StrollAppColors.primary;
          }
          return null;
        }),
      ),
      bottomSheetTheme: Theme.of(context).bottomSheetTheme.copyWith(
            backgroundColor: StrollAppColors.black1,
            modalElevation: 0.0,
            showDragHandle: true,
          ),
      scaffoldBackgroundColor: StrollAppColors.black1,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
    );
  }

  static ThemeData _darkThemeData(BuildContext context) {
    return ThemeData(
      textTheme: AppTextTheme.darkTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: StrollAppColors.black1,
        iconTheme: IconThemeData(
          color: StrollAppColors.black1,
        ),
      ),
      chipTheme: Theme.of(context).chipTheme.copyWith(
          labelStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: StrollAppColors.black1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          selectedColor: StrollAppColors.primary,
          backgroundColor: StrollAppColors.black1),
      dialogBackgroundColor: StrollAppColors.black1,
      canvasColor: StrollAppColors.white2,
      elevatedButtonTheme: AppButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: AppButtonTheme.lightOutlinedButtonTheme,
      radioTheme: RadioThemeData(
        fillColor:
            WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return StrollAppColors.white2.withOpacity(.5);
          }
          if (states.contains(WidgetState.selected)) {
            return StrollAppColors.primary;
          }
          return StrollAppColors.white2;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        side: WidgetStateBorderSide.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return BorderSide(
                width: 1.0, color: StrollAppColors.white2.withOpacity(.5));
          }
          if (states.contains(WidgetState.selected)) {
            return const BorderSide(width: 1.0, color: StrollAppColors.white2);
          }
          return const BorderSide(width: 1.0, color: StrollAppColors.white2);
        }),
        fillColor:
            WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return null;
          }
          if (states.contains(WidgetState.selected)) {
            return StrollAppColors.primary;
          }
          return null;
        }),
      ),
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
            menuStyle: MenuStyle(
              padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: 16.w),
              ),
              shape: WidgetStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                (states) {
                  if (states.contains(WidgetState.pressed)) {
                    return StrollAppColors.white1;
                  } else {
                    return StrollAppColors.white1;
                  }
                },
              ),
            ),
          ),
      bottomSheetTheme: Theme.of(context).bottomSheetTheme.copyWith(
            backgroundColor: StrollAppColors.black1,
            modalElevation: 0.0,
            showDragHandle: true,
          ),
      scaffoldBackgroundColor: StrollAppColors.black1,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
    );
  }
}
