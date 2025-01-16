import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroll_task1/core/extensions/string_extensions.dart';
import 'package:stroll_task1/features/home/presentation/screens/home_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  void _onTabSelected(int index) {
    if (currentIndex != index) {
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: _onTabSelected,
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          items: [
            BottomNavigationBarItem(
              icon: WebsafeSvg.asset("poker-cards".svg),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: WebsafeSvg.asset("bonfire".svg),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: WebsafeSvg.asset("chat".svg),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: WebsafeSvg.asset("user".svg),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
