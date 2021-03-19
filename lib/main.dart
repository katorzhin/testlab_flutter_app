import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Random random = new Random();

  Color color;

  void changeRandomColor() {
    setState(() {
      color = Color.fromARGB(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  alignTextToCenter() {
    return new Align(
        alignment: Alignment.center,
        child: Text(
          'Hey there!',
          textDirection: TextDirection.ltr,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: changeRandomColor,
      child: Container(color: color, child: alignTextToCenter()),
    ));
  }
}
