import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: myApp()),
  );
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  String message = "WikiCar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(message),
      ),
    );
  }
}
