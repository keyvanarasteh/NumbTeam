// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../../../class/desktop_and_large_appbar.dart';

import '../../../utils/colors.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secondaryColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: DesAndLarAppBar(
            title: const Text('Desktop Screen'),
            backgroundColor: AppColors.secondaryColor,
            appBar: AppBar(),
            actions: const <Widget>[],
          ),
        ),
        body: const Center(
          child: Text('Desktop Screen'),
        ));
  }
}
