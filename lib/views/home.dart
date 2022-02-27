import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage = new AssetImage('images/dice.png');

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    AssetImage newImage = new AssetImage('images/dice.png');
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dice Roller',
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: diceImage,
              width: 200.0,
              height: 200.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.lime),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ))),
                onPressed: rollDice,
                child: Text('Here to Rock and Roll',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
