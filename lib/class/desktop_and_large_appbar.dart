import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DesAndLarAppBar extends StatelessWidget {
  final Text title;
  final Color backgroundColor;
  final AppBar appBar;
  final List<Widget> actions;

  const DesAndLarAppBar(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.appBar,
      required this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.secondaryColor,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 5),
        child: Image.asset(
          'assets/images/logo/github_logo.png',
          // width: 250,
          // height: 250,
          // fit: BoxFit.cover,
        ),
      ),
      title: ConstrainedBox(
        constraints: const BoxConstraints(
            maxWidth: 700, minWidth: 300, maxHeight: 40, minHeight: 40),
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                child: TextFormField(
                  controller: TextEditingController(),
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Search or jump to...',
                    labelStyle: const TextStyle(
                      color: Color(0xFF8B949E),
                      fontSize: 14,
                    ),
                    hintText: 'Search or jump to...',
                    hintStyle: const TextStyle(
                      color: Color(0xFF8B949E),
                      fontSize: 14,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF24292E),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF24292E),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF30363D),
                  ),
                  style: const TextStyle(
                    color: Color(0xFFC9D1D9),
                    fontSize: 14,
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: TextButton(
                onPressed: () => print('Pull_request_button pressed ...'),
                child: const Text(
                  'Pull requests',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: TextButton(
                onPressed: () => print('Issues_button pressed ...'),
                child: const Text(
                  'Issues',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: TextButton(
                onPressed: () => print('Codespaces_button pressed ...'),
                child: const Text(
                  'Codespaces',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: TextButton(
                onPressed: () => print('Marketplace_button pressed ...'),
                child: const Text(
                  'Marketplace',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: TextButton(
                onPressed: () => print('Explore_button pressed ...'),
                child: const Text(
                  'Explore',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
              child: TextButton(
                onPressed: () => print('Notification_button pressed ...'),
                child: const Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
              child: TextButton(
                onPressed: () => print('Plus_button pressed ...'),
                child: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 10, 5),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: const NetworkImage(
                    'https://avatars.githubusercontent.com/u/47338871?v=4'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
