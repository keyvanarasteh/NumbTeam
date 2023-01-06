import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../class/desktop_and_large_appbar.dart';
import '../../../utils/colors.dart';
import '../../../widgets/my_checkbox.dart';
import '../../../widgets/my_dropdownbutton.dart';
import '../../../widgets/my_switch.dart';

double _value = 20;

class LargeScreen extends StatefulWidget {
  const LargeScreen({super.key});

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Top Repositories'),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              // <-- Icon
                              Icons.add,
                              size: 20.0,
                            ),
                            label: Text('New'), // <-- Text
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 35, 134, 54),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              textStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/16303698?v=4',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('keyvanarasteh/flutter51'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/16303698?v=4',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('keyvanarasteh/NumbTeam '),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/92443831?v=4',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('MehmetJank/Flutter-UI'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/115549152?v=4',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('seckin111/I-Love-Flutter<3'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/47338871?v=4',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('ElonMusk/SpaceX'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/16303698?v=4',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('keyvanarasteh/DART'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  color: AppColors.primaryColor,
                  height: double.infinity,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("DropdownButton Widget Test Area"),
                            SizedBox(
                              height: 10,
                            ),
                            DropdownButtonExample(),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("ClipRRect Widget Test Area"),
                            SizedBox(
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
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("Card Widget Test Area"),
                            SizedBox(
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
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Slider Widget Test Area"),
                            SizedBox(
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
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("FloatingActionButton Widget Test Area"),
                            SizedBox(
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
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Checkbox Widget Test Area"),
                            SizedBox(
                              height: 10,
                            ),
                            MyStatefulWidget(),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Circular Progress Indicator Widget Test Area"),
                            SizedBox(
                              height: 10,
                            ),
                            CircularProgressIndicator(),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Linear Progress Indicator Widget Test Area"),
                            SizedBox(
                              height: 10,
                            ),
                            LinearProgressIndicator(),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Switch Widget Test Area"),
                            SizedBox(
                              height: 10,
                            ),
                            SwitchExample(),
                          ],
                        ),
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
