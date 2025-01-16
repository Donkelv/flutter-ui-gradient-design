import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/theme/menufinderafrica_theme.dart';
import 'package:stroll_task1/features/bottom_navbar/presentation/screens/bottom_navbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme:
              SchedulerBinding.instance.platformDispatcher.platformBrightness ==
                      Brightness.dark
                  ? StrollAppTheme.getDarkThemeData(context)
                  : StrollAppTheme.getLightThemeData(context),
          home: const BottomNavbarScreen()
        );
      },
    );
  }
}

