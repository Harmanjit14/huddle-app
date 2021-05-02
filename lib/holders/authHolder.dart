import 'package:flutter/material.dart';
import 'package:huddle/models/color.dart';
import 'package:huddle/widgets/text.dart';

class AuthHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorFile.base,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 200,
                  child: Image.asset("assets/waiting.gif"),
                ),
                Expanded(
                  child: Container(
                    child: WeightText(
                      text: "Login",color: Colors.white,size: 45,weight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
