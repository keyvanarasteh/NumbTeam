import 'package:flutter/material.dart';

import '../../../class/desktop_and_large_appbar.dart';
import '../../../utils/colors.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

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
                flex: 2,
                child: Container(
                  height: double.infinity,
                  color: Colors.red,
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
                  height: double.infinity,
                  color: Colors.green,
                  child: GridView.count(crossAxisCount: 3, children: <Widget>[
                    Container(
                      color: Colors.teal,
                      child: Center(
                        child: Text('1'),
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text('2'),
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: Center(
                        child: Text('3'),
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(
                        child: Text('4'),
                      ),
                    ),
                    Container(
                      color: Colors.purple,
                      child: Center(
                        child: Text('5'),
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      child: Center(
                        child: Text('6'),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
