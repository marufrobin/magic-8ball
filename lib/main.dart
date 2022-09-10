import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Ask me Anything"),
        ),
        body: PageDisicion(),
      ),
    );
  }
}

class PageDisicion extends StatefulWidget {
  @override
  State<PageDisicion> createState() => _PageDisicionState();
}

class _PageDisicionState extends State<PageDisicion> {
  int changeBall = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(10),
      color: Colors.blue.shade400,
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              changeBall = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset("images/ball$changeBall.png"),
        ),
      ),
    );
  }
}
