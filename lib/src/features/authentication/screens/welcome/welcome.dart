import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME Screen"),

      ),
      body: Center(child: Text("Welcome")),
    );
  }

}