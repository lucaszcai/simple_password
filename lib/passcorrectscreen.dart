import 'package:flutter/material.dart';

class PassCorrect extends StatefulWidget {
  @override
  _PassCorrectState createState() => _PassCorrectState();
}

class _PassCorrectState extends State<PassCorrect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Password entered successfully")
      ),
    );
  }
}
