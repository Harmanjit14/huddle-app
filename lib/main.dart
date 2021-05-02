import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huddle/holders/authHolder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Huddle',
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: AuthHolder(),
    );
  }
}
