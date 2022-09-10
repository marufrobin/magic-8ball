import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Ask me Robin Anything"),
        ),
        body: pageDisicion(),
      ),
    ),
  );
}

class pageDisicion extends StatefulWidget {
  @override
  State<pageDisicion> createState() => _pageDisicionState();
}

class _pageDisicionState extends State<pageDisicion> {
  int changeBall = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(10),
      color: Colors.blue.shade400,
      child: Center(
        child: Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                changeBall = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset("images/ball$changeBall.png"),
          ),
        ),
      ),
    );
  }
}
