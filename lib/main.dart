import 'package:flutter/material.dart';
import 'package:tictaktoe/home.dart';

void main() {
  runApp(Startscreen());
}

class Startscreen extends StatelessWidget {
  const Startscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Tic Tac Toe",
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.yellow,
        body: Home(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
