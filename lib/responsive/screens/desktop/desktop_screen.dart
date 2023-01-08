// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../class/desktop_and_large_appbar.dart';

import '../../../utils/colors.dart';
import '../../../widgets/my_checkbox.dart';
import '../../../widgets/my_customcontainer.dart';
import '../../../widgets/my_dropdownbutton.dart';
import '../../../widgets/my_switch.dart';

double _value = 20;
bool _switchValue = false;
RangeValues _currentRangeValues = const RangeValues(40, 80);

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
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
      body: SafeArea(
        child: Center(
          child: Container(
              child: Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  height: double.infinity,
                  color: AppColors.secondaryColor,
                  margin: const EdgeInsets.all(20),
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
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  color: AppColors.primaryColor,
                  height: double.infinity,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: <Widget>[
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                            const Text(
                                "Cupertino Alert Dialog Widget Test Area"),
                            SizedBox(
                              height: 165,
                              child: CupertinoAlertDialog(
                                title: const Text("Cupertino Alert Dialog"),
                                content: const Text(
                                    "This is a cupertino alert dialog"),
                                actions: [
                                  CupertinoDialogAction(
                                    child: const Text("Ok"),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
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
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
