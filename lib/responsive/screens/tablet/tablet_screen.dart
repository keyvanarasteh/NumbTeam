import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:github_responsive/utils/colors.dart';

import '../../../class/mobile_and_tablet_appbar.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/my_checkbox.dart';
import '../../../widgets/my_customcontainer.dart';
import '../../../widgets/my_dropdownbutton.dart';
import '../../../widgets/my_dvider.dart';
import '../../../widgets/my_list.dart';
import '../../../widgets/my_switch.dart';

double _value = 20;
bool _switchValue = false;
RangeValues _currentRangeValues = const RangeValues(40, 80);

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
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

        body: Container(
          color: AppColors.primaryColor,
          height: double.infinity,
          child: ListView(
            children: [
              StaggeredGrid.count(
                mainAxisSpacing: 0,
                crossAxisCount: 2,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text(
                          'Repositories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        height: 356,
                        margin: const EdgeInsets.fromLTRB(14, 6, 14, 5),
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(20),
                              color: Color.fromARGB(83, 0, 0, 0),
                              child: Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: TextField(
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Find a repository...',
                                        hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 104, 104, 104),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                children: [
                                  ListTile(
                                    leading: const CircleAvatar(
                                      radius: 14,
                                      backgroundImage: NetworkImage(
                                          'https://avatars.githubusercontent.com/u/16303698?v=4'),
                                    ),
                                    title: const Text(
                                      'keyvanarasteh/NumbTeam',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: const CircleAvatar(
                                      radius: 14,
                                      backgroundImage: NetworkImage(
                                          'https://avatars.githubusercontent.com/u/16303698?v=4'),
                                    ),
                                    title: const Text(
                                      'keyvanarasteh/NumbTeam ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: const CircleAvatar(
                                      radius: 14,
                                      backgroundImage: NetworkImage(
                                          'https://avatars.githubusercontent.com/u/92443831?v=4'),
                                    ),
                                    title: const Text(
                                      'MehmetJank/Flutter-UI',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: const CircleAvatar(
                                      radius: 14,
                                      backgroundImage: NetworkImage(
                                          'https://avatars.githubusercontent.com/u/115549152?v=4'),
                                    ),
                                    title: const Text(
                                      'seckin111/I-Love-Flutter<3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Color.fromARGB(255, 104, 104, 104),
                                    height: 0,
                                    thickness: 0.5,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 20, top: 10),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Show more',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 104, 104, 104),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text(
                          'Recent activity',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        height: 110,
                        margin: const EdgeInsets.fromLTRB(14, 6, 14, 0),
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
                          child: Text(
                            'When you take actions across GitHub, we’ll provide links to that activity here.',
                            style: TextStyle(
                              color: Color.fromARGB(255, 104, 104, 104),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyButton(),
                  MyDvider(),
                  CustomListTile(
                    imageUrl:
                        'https://avatars.githubusercontent.com/u/16303698?v=4',
                    userName: 'KeyvanArasteh',
                    repoName: 'Flutter51',
                    repoDescription: 'My Class Members Flutter Folders',
                    starCount: 10,
                    daysCount: 20,
                  ),
                  MyDvider(),
                  CustomListTile(
                    imageUrl:
                        'https://avatars.githubusercontent.com/u/92443831?v=4',
                    userName: 'MehmetJank',
                    repoName: 'NumbTeam',
                    repoDescription: 'This is best team in the world',
                    starCount: 100,
                    daysCount: 10,
                  ),
                  MyDvider(),
                  CustomListTile(
                    imageUrl:
                        'https://avatars.githubusercontent.com/u/115549152?v=4',
                    userName: 'seckin111',
                    repoName: 'Pinsoft-Challenge',
                    repoDescription:
                        'No description, website, or topics provided.',
                    starCount: 5,
                    daysCount: 1,
                  ),
                  MyDvider(),
                  CustomListTile(
                    imageUrl:
                        'https://avatars.githubusercontent.com/u/47338871?v=4',
                    userName: 'ElonMusk',
                    repoName: 'TeslaAutoPilot',
                    repoDescription: 'Tesla Auto Pilot System AI',
                    starCount: 100,
                    daysCount: 30,
                  ),
                  MyDvider(),
                  CustomListTile(
                    imageUrl:
                        'https://avatars.githubusercontent.com/u/16908999?v=4',
                    userName: 'BillGates',
                    repoName: 'Windows 12X',
                    repoDescription: 'The Official Windows 12X Repository',
                    starCount: 1000,
                    daysCount: 300,
                  ),
                  const MyCustomContainer(
                    children: [
                      Text("Chip Widget Test Area"),
                      SizedBox(
                        height: 10,
                      ),
                      Chip(
                        label: Text('This is a chip widget'),
                      ),
                    ],
                  ),
                  const MyCustomContainer(
                    children: [
                      Text("DropdownButton Widget Test Area"),
                      SizedBox(
                        height: 10,
                      ),
                      DropdownButtonExample(),
                    ],
                  ),
                  MyCustomContainer(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("ClipRRect Widget Test Area"),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(75),
                          child: Image.network(
                            'https://avatars.githubusercontent.com/u/92443831?v=4',
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyCustomContainer(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Card Widget Test Area"),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.album),
                              title: Text('Flutter Song'),
                              subtitle: Text(
                                  'Music by MehmetJank. Lyrics by Seckin111.'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                TextButton(
                                  child: const Text('BUY TICKETS'),
                                  onPressed: () {/* ... */},
                                ),
                                const SizedBox(width: 8),
                                TextButton(
                                  child: const Text('LISTEN'),
                                  onPressed: () {/* ... */},
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  MyCustomContainer(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Cupertino Slider Widget Test Area"),
                      const SizedBox(
                        height: 10,
                      ),
                      CupertinoSlider(
                        min: 0.0,
                        max: 100.0,
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ],
                  ),
                  MyCustomContainer(
                    children: [
                      const Text("RangeSlider Widget Test Area"),
                      const SizedBox(
                        height: 10,
                      ),
                      RangeSlider(
                        values: _currentRangeValues,
                        min: 0.0,
                        max: 100.0,
                        divisions: 5,
                        labels: RangeLabels(
                          _currentRangeValues.start.round().toString(),
                          _currentRangeValues.end.round().toString(),
                        ),
                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      ),
                    ],
                  ),
                  MyCustomContainer(
                    children: [
                      const Text("FloatingActionButton Widget Test Area"),
                      const SizedBox(
                        height: 10,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  const MyCustomContainer(
                    children: [
                      Text("Checkbox Widget Test Area"),
                      SizedBox(
                        height: 10,
                      ),
                      MyStatefulWidget(),
                    ],
                  ),
                  const MyCustomContainer(
                    children: [
                      Text("Circular Progress Indicator Widget Test Area"),
                      SizedBox(
                        height: 10,
                      ),
                      CircularProgressIndicator(),
                    ],
                  ),
                  const MyCustomContainer(
                    children: [
                      Text("Linear Progress Indicator Widget Test Area"),
                      SizedBox(
                        height: 10,
                      ),
                      LinearProgressIndicator(),
                    ],
                  ),
                  const MyCustomContainer(
                    children: [
                      Text("Cupertino Activity Indicator Widget Test Area"),
                      SizedBox(
                        height: 10,
                      ),
                      CupertinoActivityIndicator(),
                    ],
                  ),
                  const MyCustomContainer(
                    children: [
                      Text("Switch Widget Test Area"),
                      SizedBox(
                        height: 10,
                      ),
                      SwitchExample(),
                    ],
                  ),
                  MyCustomContainer(
                    children: [
                      const Text("Cupertino Switch Widget Test Area"),
                      const SizedBox(
                        height: 10,
                      ),
                      CupertinoSwitch(
                        value: _switchValue,
                        onChanged: (bool value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  MyCustomContainer(
                    children: [
                      const Text("Cupertino Button Widget Test Area"),
                      const SizedBox(
                        height: 10,
                      ),
                      CupertinoButton(
                        child: const Text("Cupertino Button"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyanAccent,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Cupertino Alert Dialog Widget Test Area"),
                        const SizedBox(
                          height: 5,
                        ),
                        CupertinoAlertDialog(
                          title: const Text("Cupertino Alert Dialog"),
                          content:
                              const Text("This is a cupertino alert dialog"),
                          actions: [
                            CupertinoDialogAction(
                              child: const Text("Ok"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  MyCustomContainer(
                    children: [
                      const Text("Cupertino Context Menu Widget Test Area"),
                      const SizedBox(
                        height: 10,
                      ),
                      CupertinoContextMenu(
                        actions: <Widget>[
                          CupertinoContextMenuAction(
                            child: const Text('Keske'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoContextMenuAction(
                            child: const Text('Iphone um olsa'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  MyCustomContainer(
                    children: [
                      const Text("Chip With Wrap Widget Test Area"),
                      const SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        spacing: 8.0, // gap between adjacent chips
                        runSpacing: 4.0, // gap between lines
                        children: const <Widget>[
                          Chip(
                            avatar: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 4, 231, 231),
                                child: Text('mc')),
                            label: Text('Mehmet Can'),
                          ),
                          Chip(
                            avatar: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 152, 245, 2),
                                child: Text('K1')),
                            label: Text('Keyvan Arasteh'),
                          ),
                          Chip(
                            avatar: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 255, 94, 0),
                                child: Text('SY')),
                            label: Text('Seckin Yilmaz'),
                          ),
                          Chip(
                            avatar: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 255, 0, 200),
                                child: Text('FT')),
                            label: Text('Flutter'),
                          ),
                          Chip(
                            avatar: CircleAvatar(
                                backgroundColor: Color.fromARGB(255, 255, 1, 1),
                                child: Text('NT')),
                            label: Text('Numb Team'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
