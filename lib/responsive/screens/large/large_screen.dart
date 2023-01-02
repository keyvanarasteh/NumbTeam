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
            color: AppColors.secondaryColor,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 400,
                        minWidth: 300,
                      ),
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          color: AppColors.primaryColor,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Top Repositories'),
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      // <-- Icon
                                      Icons.add,
                                      size: 24.0,
                                    ),
                                    label: Text('New'), // <-- Text
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 35, 134, 54),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
