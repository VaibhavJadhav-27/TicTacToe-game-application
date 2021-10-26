import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GameScreen extends StatefulWidget {
  String value;
  GameScreen({required this.value});

  @override
  _GameScreenState createState() => _GameScreenState(value);
}

class _GameScreenState extends State<GameScreen> {
  String value;
  _GameScreenState(this.value);

  bool tile1 = true;
  bool tile2 = true;
  bool tile3 = true;
  bool tile4 = true;
  bool tile5 = true;
  bool tile6 = true;
  bool tile7 = true;
  bool tile8 = true;
  bool tile9 = true;

  var u1;
  var len;
  var tp;
  var firstposition;
  var secondposition;
  var thirdposition;
  var fourthposition;
  var fifthposition;
  var sixthposition;
  var seventhposition;
  var eightposition;
  var ninthposition;

  List check = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  List type = [];
  var firstperson;
  var secondperson;

  void initalize() {
    if (value == "circle") {
      firstperson = "circle";
      secondperson = "cross";
    } else {
      firstperson = "cross";
      secondperson = "circle";
    }
  }

  void swap1() {
    if (firstperson == "circle") {
      firstposition = "circle";
    } else {
      firstposition = "cross";
    }
  }

  void userscheck() {
    if (type.length == 0) {
      type.add(firstperson);
      u1 = firstperson;
    } else {
      len = type.length;
      u1 = type[len - 1];
      if (u1 == firstperson) {
        type.add(secondperson);
      } else {
        type.add(firstperson);
      }
    }
    print(type);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: IconButton(
                        onPressed: null,
                        icon: Image(
                            image: (tile1
                                ? AssetImage('assets/images/tile.jpg')
                                : AssetImage(
                                    'assets/images/$firstperson.jpg')))),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.yellow,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.green,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
