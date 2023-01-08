import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  final List<Widget> children;

  const MyCustomContainer({Key? key, this.children = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.cyanAccent,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
