import 'package:flutter/material.dart';
import 'package:huddle/models/color.dart';
import 'package:huddle/widgets/text.dart';

class AuthHolder extends StatefulWidget {
  @override
  _AuthHolderState createState() => _AuthHolderState();
}

class _AuthHolderState extends State<AuthHolder> {
  String username = "";
  bool usernameError = false;
  final TextEditingController usernameController = new TextEditingController();
  String password = "";
  bool passwordError = false;
  final TextEditingController passwordController = new TextEditingController();

  @override
  void initState() {
    usernameController.addListener(() {
      username = usernameController.text;
    });
    passwordController.addListener(() {
      password = passwordController.text;
    });
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: colorFile.base,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 200,
                child: Image.asset("assets/waiting.gif"),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: BoldText(
                text: "Let's sign you in.",
                size: 37,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: RegularText(
                text: "Welcome back.\nYou've been missed alot.",
                size: 28,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                controller: usernameController,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  errorText: (usernameError) ? "Can't be empty!" : null,
                  labelText: "Username",
                  prefixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                controller: passwordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                obscuringCharacter: "*",
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  errorText: (passwordError) ? "Can't be empty!" : null,
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: colorFile.primary,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  onPressed: () {},
                  child: BoldText(
                    text: "Continue",
                    size: 20,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
