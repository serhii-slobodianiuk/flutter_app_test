import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyHomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: MyHomePage(
        ),
      ),
    );
  }
}
