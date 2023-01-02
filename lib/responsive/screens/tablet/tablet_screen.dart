import 'package:flutter/material.dart';
import 'package:github_responsive/utils/colors.dart';

import '../../../class/mobile_and_tablet_appbar.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: MobAndTabAppBar(
            title: const Text('Mobile Screen'),
            backgroundColor: AppColors.secondaryColor,
            appBar: AppBar(),
            actions: const <Widget>[],
          ),
        ),
        //Drawer
        drawer: Drawer(
          //drawer opening from up to down

          child: Container(
            color: AppColors.secondaryColor,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: const Text('Dashboard'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                ListTile(
                  title: const Text('Pull requests'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                ListTile(
                  title: const Text('Issues'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                ListTile(
                  title: const Text('Codespaces'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                ListTile(
                  title: const Text('Marketplace'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                ListTile(
                  title: const Text('Explore'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                ListTile(
                  title: const Text('Sponsors'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                ListTile(
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                ListTile(
                  title: const Text('KeyvanArasteh'),
                  leading: const CircleAvatar(
                    radius: 14,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/16303698?v=4'),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 0,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
                ListTile(
                  title: const Text('Sign out'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColors.secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 33, 40, 50),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search or jump to...',
                                    hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Column(
                  //welcome page
                  children: const [
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10,
                          bottom: 0,
                          right: 10,
                          top: 10), //apply padding to all four sides
                      child: Text(
                        'The home for all developers — including you.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, bottom: 10, right: 10, top: 0),
                      child: Text(
                        'Welcome to your personal dashboard, where you can find an introduction to how GitHub works, tools to help you build software, and help merging your first lines of code.',
                        style: TextStyle(
                          color: Color.fromARGB(255, 166, 153, 153),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 22, 27, 34),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.all(10.0),
                          child: const Text(
                            "Start a new repository\nA repository contains all of your project's files, revision history, and collaborator discussion.",
                            style: TextStyle(
                              color: Color.fromARGB(255, 249, 249, 249),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 22, 27, 34),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.all(10.0),
                          child: const Text(
                            "Introduce yourself with a profile README\nShare information about yourself by creating a profile README, which appears at the top of your profile page.",
                            style: TextStyle(
                              color: Color.fromARGB(255, 249, 249, 249),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
