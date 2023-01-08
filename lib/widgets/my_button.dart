import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _button1Selected = true;
  bool _button2Selected = false;

  void _selectButton1() {
    setState(() {
      _button1Selected = true;
      _button2Selected = false;
    });
  }

  void _selectButton2() {
    setState(() {
      _button1Selected = false;
      _button2Selected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
          height: 50,
        ),
        TextButton(
          onPressed: _selectButton1,
          style: TextButton.styleFrom(
            foregroundColor: _button1Selected
                ? Color.fromARGB(255, 187, 190, 0)
                : Color.fromARGB(239, 255, 255, 255),
            backgroundColor: Colors.transparent,
          ),
          child: Text('Following'),
        ),
        TextButton(
          onPressed: _selectButton2,
          style: TextButton.styleFrom(
            foregroundColor: _button2Selected
                ? Color.fromARGB(255, 187, 190, 0)
                : Color.fromARGB(239, 255, 255, 255),
            backgroundColor: Colors.transparent,
          ),
          child: Text('For You'),
        ),
      ],
    );
  }
}
