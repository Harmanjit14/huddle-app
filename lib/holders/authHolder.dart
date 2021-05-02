import 'package:flutter/material.dart';
import 'package:huddle/models/color.dart';

class AuthHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorFile.base,
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 200,
            // color: Colors.green,
            child: Image.asset("assets/waiting.gif"),
          ),
        ],
      ),
    );
  }
}
