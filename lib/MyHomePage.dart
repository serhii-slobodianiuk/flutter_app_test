import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Color(0xABCDEF01);
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
      onTap: changeIndex,
      child: Container(
        child: Center(
          child: Text(
            'Hey There!',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: _color,
        ),
      ),
    );
  }
}
