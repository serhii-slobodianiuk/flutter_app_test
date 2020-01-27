import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Color(0xFFFF9000);
  bool _click = false;
  Random random = new Random();

  void changeIndex() {
    setState(() {
      _color = Color.fromARGB(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _click = !_click;
          changeIndex();
        });
      },
      child: Container(
        child: Center(
          child: AnimatedContainer(
            color: _color,
            alignment: _click
                ? Alignment.bottomCenter
                : AlignmentDirectional.topCenter,
            duration: Duration(milliseconds: 2000),
            curve: Curves.fastOutSlowIn,
            child: Text(
              'Hey There!',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
