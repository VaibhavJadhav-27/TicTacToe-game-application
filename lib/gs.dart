// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tictaktoe/home.dart';

class gs extends StatefulWidget {
  const gs({Key? key}) : super(key: key);

  @override
  _gsState createState() => _gsState();
}

class _gsState extends State<gs> {
  bool tile1 = true;
  bool tile2 = true;
  bool tile3 = true;
  bool tile4 = true;
  bool tile5 = true;
  bool tile6 = true;
  bool tile7 = true;
  bool tile8 = true;
  bool tile9 = true;

  bool firstperson = true;
  bool secondperson = false;

  List check = [0, 0, 0, 0, 0, 0, 0, 0, 0];

  var tp;
  var t1, t2, t3, t4, t5, t6, t7, t8, t9;
  int a = 0;
  int winner = 0;
  int cont = 0;
  var p1;
  var count_zero;

  void checkswap(int a) {
    if (firstperson == true) {
      tp = "cross";
      check[a - 1] = 1;
      print(check);
      firstperson = false;
      secondperson = true;
    } else {
      tp = "circle";
      check[a - 1] = 2;
      print(check);
      firstperson = true;
      secondperson = false;
    }
  }

  void restart() {
    count_zero = check.contains(0);
    if (count_zero == false) {
      showDialog(
          context: context,
          builder: (BuildContext context) => _buildPopuprestartDialog(context));
    }
  }

  int checkwinner() {
    if (check[0] == check[1] && check[1] == check[2]) {
      cont = 10 + int.parse(check[0].toString());
    } else if (check[3] == check[4] && check[4] == check[5]) {
      cont = 10 + int.parse(check[3].toString());
    } else if (check[6] == check[7] && check[7] == check[8]) {
      cont = 10 + int.parse(check[6].toString());
    } else if (check[0] == check[3] && check[3] == check[6]) {
      cont = 10 + int.parse(check[0].toString());
    } else if (check[1] == check[4] && check[4] == check[7]) {
      cont = 10 + int.parse(check[1].toString());
    } else if (check[2] == check[5] && check[5] == check[8]) {
      cont = 10 + int.parse(check[2].toString());
    } else if (check[0] == check[4] && check[4] == check[8]) {
      cont = 10 + int.parse(check[0].toString());
    } else if (check[2] == check[4] && check[4] == check[6]) {
      cont = 10 + int.parse(check[2].toString());
    } else {
      cont = 0;
    }
    return cont;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Text(
                    'Player 1 : Cross',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.red),
                  ),
                  Spacer(),
                  Text(
                    'Player 2 : Circle',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue),
                  )
                ],
              ),
              color: Colors.lightGreenAccent,
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // 1st Tile
                IconButton(
                    onPressed: () {
                      setState(() {
                        a = 1;
                        checkswap(a);
                        print(tp);
                        t1 = tp;
                        tile1 = !tile1;
                        winner = checkwinner();
                        print(winner);
                        if (winner == 11) {
                          p1 = 1;
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context));
                        } else if (winner == 12) {
                          p1 = 2;
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context));
                        }
                        restart();
                      });
                    },
                    iconSize: 100,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    icon: Image(
                        image: (tile1
                            ? AssetImage('assets/images/tile.jpg')
                            : AssetImage('assets/images/$t1.jpg')))),
                Spacer(),

                // 2nd Tile
                IconButton(
                    onPressed: () {
                      setState(() {
                        a = 2;
                        checkswap(a);
                        print(tp);
                        t2 = tp;
                        tile2 = !tile2;
                        winner = checkwinner();
                        print(winner);
                        if (winner == 11) {
                          p1 = 1;
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context));
                        } else if (winner == 12) {
                          p1 = 2;
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context));
                        }
                        restart();
                      });
                    },
                    iconSize: 100,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    icon: Image(
                        image: (tile2
                            ? AssetImage('assets/images/tile.jpg')
                            : AssetImage('assets/images/$t2.jpg')))),
                Spacer(),

                //3rd Tile
                IconButton(
                    onPressed: () {
                      setState(() {
                        a = 3;
                        checkswap(a);
                        print(tp);
                        t3 = tp;
                        tile3 = !tile3;
                        winner = checkwinner();
                        print(winner);
                        if (winner == 11) {
                          p1 = 1;
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context));
                        } else if (winner == 12) {
                          p1 = 2;
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context));
                        }
                        restart();
                      });
                    },
                    iconSize: 100,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    icon: Image(
                        image: (tile3
                            ? AssetImage('assets/images/tile.jpg')
                            : AssetImage('assets/images/$t3.jpg'))))
              ],
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: <
                Widget>[
              //4th Tile
              IconButton(
                  onPressed: () {
                    setState(() {
                      a = 4;
                      checkswap(a);
                      print(tp);
                      t4 = tp;
                      tile4 = !tile4;
                      winner = checkwinner();
                      print(winner);
                      if (winner == 11) {
                        p1 = 1;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      } else if (winner == 12) {
                        p1 = 2;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      }
                      restart();
                    });
                  },
                  iconSize: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  icon: Image(
                      image: (tile4
                          ? AssetImage('assets/images/tile.jpg')
                          : AssetImage('assets/images/$t4.jpg')))),
              Spacer(),

              //5th Tile
              IconButton(
                  onPressed: () {
                    setState(() {
                      a = 5;
                      checkswap(a);
                      print(tp);
                      t5 = tp;
                      tile5 = !tile5;
                      winner = checkwinner();
                      print(winner);
                      if (winner == 11) {
                        p1 = 1;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      } else if (winner == 12) {
                        p1 = 2;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      }
                      restart();
                    });
                  },
                  iconSize: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  icon: Image(
                      image: (tile5
                          ? AssetImage('assets/images/tile.jpg')
                          : AssetImage('assets/images/$t5.jpg')))),
              Spacer(),

              //6th Tile
              IconButton(
                  onPressed: () {
                    setState(() {
                      a = 6;
                      checkswap(a);
                      print(tp);
                      t6 = tp;
                      tile6 = !tile6;
                      winner = checkwinner();
                      print(winner);
                      if (winner == 11) {
                        p1 = 1;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      } else if (winner == 12) {
                        p1 = 2;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      }
                      restart();
                    });
                  },
                  iconSize: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  icon: Image(
                      image: (tile6
                          ? AssetImage('assets/images/tile.jpg')
                          : AssetImage('assets/images/$t6.jpg'))))
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: <
                Widget>[
              //7th Tile
              IconButton(
                  onPressed: () {
                    setState(() {
                      a = 7;
                      checkswap(a);
                      print(tp);
                      t7 = tp;
                      tile7 = !tile7;
                      winner = checkwinner();
                      print(winner);
                      if (winner == 11) {
                        p1 = 1;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      } else if (winner == 12) {
                        p1 = 2;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      }
                      restart();
                    });
                  },
                  iconSize: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  icon: Image(
                      image: (tile7
                          ? AssetImage('assets/images/tile.jpg')
                          : AssetImage('assets/images/$t7.jpg')))),
              Spacer(),

              //8th Tile
              IconButton(
                  onPressed: () {
                    setState(() {
                      a = 8;
                      checkswap(a);
                      print(tp);
                      t8 = tp;
                      tile8 = !tile8;
                      winner = checkwinner();
                      print(winner);
                      if (winner == 11) {
                        p1 = 1;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      } else if (winner == 12) {
                        p1 = 2;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      }
                      restart();
                    });
                  },
                  iconSize: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  icon: Image(
                      image: (tile8
                          ? AssetImage('assets/images/tile.jpg')
                          : AssetImage('assets/images/$t8.jpg')))),
              Spacer(),

              //9th Tile
              IconButton(
                  onPressed: () {
                    setState(() {
                      a = 9;
                      checkswap(a);
                      print(tp);
                      t9 = tp;
                      tile9 = !tile9;
                      winner = checkwinner();
                      print(winner);
                      if (winner == 11) {
                        p1 = 1;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      } else if (winner == 12) {
                        p1 = 2;
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      }
                      restart();
                    });
                  },
                  iconSize: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  icon: Image(
                      image: (tile9
                          ? AssetImage('assets/images/tile.jpg')
                          : AssetImage('assets/images/$t9.jpg'))))
            ]),
            Spacer()
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: Text(
        "Winner : Player $p1",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),
      ),
      actions: <Widget>[
        new TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()));
            },
            child: const Text(
              "Close",
              style: TextStyle(
                color: Colors.black,
              ),
            ))
      ],
    );
  }

  Widget _buildPopuprestartDialog(BuildContext context) {
    return new AlertDialog(
      title: Text(
        "Game Tied...!!! Please Restart",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),
      ),
      actions: <Widget>[
        new TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()));
            },
            child: const Text(
              "Close",
              style: TextStyle(
                color: Colors.black,
              ),
            ))
      ],
    );
  }
}
