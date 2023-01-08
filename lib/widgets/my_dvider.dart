import 'package:flutter/material.dart';

class MyDvider extends StatelessWidget {
  const MyDvider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 0,
          thickness: 0.5,
          indent: 10,
          endIndent: 10,
        ),
      ],
    );
  }
}
