import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary: false,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 22, 27, 34),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
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
      ),
      //Drawer
      drawer: Drawer(
        //drawer opening from up to down

        child: Container(
          color: const Color.fromARGB(255, 22, 27, 34),
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
            color: const Color.fromARGB(255, 22, 27, 34),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
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
                SizedBox(height: 20),
                Text(
                  'The home for all developers — including you.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome to your personal dashboard, where you can find an introduction to how GitHub works, tools to help you build software, and help merging your first lines of code.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 166, 153, 153),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}