import 'package:flutter/material.dart';
import 'package:tictaktoe/gamescreen.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  late String value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.lightGreen,
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150,
                ),
                Center(
                  child: IconButton(
                    onPressed: () {
                      value = "circle";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GameScreen(value: value)));
                    },
                    icon: Image(image: AssetImage('assets/images/circle.jpg')),
                    iconSize: 140,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: IconButton(
                    onPressed: () {
                      value = "cross";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GameScreen(value: value)));
                    },
                    icon: Image(image: AssetImage('assets/images/cross.jpg')),
                    iconSize: 140,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
