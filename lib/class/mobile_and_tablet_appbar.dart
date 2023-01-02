import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MobAndTabAppBar extends StatelessWidget {
  final Text title;
  final Color backgroundColor;
  final AppBar appBar;
  final List<Widget> actions;

  const MobAndTabAppBar(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.appBar,
      required this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      primary: false,
      centerTitle: true,
      backgroundColor: AppColors.secondaryColor,
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Notifications'),
                  content: const Text('You have no notifications :)'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
      title: Padding(
        padding: const EdgeInsets.only(top: 3, bottom: 0),
        child: Image.asset(
          'assets/images/logo/github_logo.png',
          height: 35,
          width: 35,
        ),
      ),
    );
  }
}
