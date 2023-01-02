import 'package:flutter/material.dart';
import 'package:github_responsive/class/mobile_and_tablet_appbar.dart';
import '../../../utils/colors.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

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
        drawer: Drawer(
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
        body: Column(
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
              color: AppColors.primaryColor,
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
            Container(
              color: const Color.fromARGB(255, 22, 27, 34),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 22, 27, 34),
              ),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    "Start a new repository\nA repository contains all of your project's files, revision history, and collaborator discussion.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 249, 249, 249),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text("Keyvanarasteh/"),
                      ConstrainedBox(
        constraints: const BoxConstraints(
            maxWidth: 316, minWidth: 300, maxHeight: 35, minHeight: 35),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                child: TextFormField(
                  controller: TextEditingController(),
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'name your new repository',
                    labelStyle: const TextStyle(
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
            ),],),),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ElevatedButton(
                                        onPressed: () {},
                                        child:Text('Create a new repository'), // <-- Text
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 35,134,54),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          textStyle: TextStyle(
                                              fontSize: 10,
                                              ),
                                        ),
                                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 22, 27, 34),
              ),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    "Introduce yourself with a profile README\nShare information about yourself by creating a profile README, which appears at the top of your profile page.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 249, 249, 249),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
