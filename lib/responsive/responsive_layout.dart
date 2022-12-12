import 'package:flutter/material.dart';
import 'package:github_responsive/responsive/screens/mobile_screen.dart';
import 'package:github_responsive/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;
  final Widget largeScreen;
  const ResponsiveLayout({
    Key? key,
    required this.mobileScreen,
    required this.tabletScreen,
    required this.desktopScreen,
    required this.largeScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileScreenSize) {
          return mobileScreen;
        } else if (constraints.maxWidth < tabletScreenSize) {
          return tabletScreen;
        } else if (constraints.maxWidth < desktopScreenSize) {
          return desktopScreen;
        } else {
          return largeScreen;
        }
      },
    );
  }
}
