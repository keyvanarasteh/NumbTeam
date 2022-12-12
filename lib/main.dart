import 'package:flutter/material.dart';
import 'package:github_responsive/responsive/responsive_layout.dart';
import 'package:github_responsive/responsive/screens/desktop/desktop_screen.dart';
import 'package:github_responsive/responsive/screens/large/large_screen.dart';
import 'package:github_responsive/responsive/screens/mobile/mobile_screen.dart';
import 'package:github_responsive/responsive/screens/tablet/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: ResponsiveLayout(
        mobileScreen: MobileScreen(),
        tabletScreen: TabletScreen(),
        desktopScreen: DesktopScreen(),
        largeScreen: LargeScreen(),
      ),
    );
  }
}
