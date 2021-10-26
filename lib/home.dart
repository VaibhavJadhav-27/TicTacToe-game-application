import 'package:flutter/material.dart';
import 'package:tictaktoe/gs.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
      primary: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      elevation: 10,
      shadowColor: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image(
              image: AssetImage('assets/images/tictaktoe.jpg'),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => gs()));
            },
            child: const Text('Start'),
            style: style,
          )
        ],
      ),
    );
  }
}
