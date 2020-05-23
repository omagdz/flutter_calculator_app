import 'package:flutter/material.dart';

void main() => runApp(MyCalculator());

class MyCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double numone = 0;
  double numtwo = 0;
  String text = "0";
  String result = "0";
  String finalResult = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                drawbtn("C", Colors.amber),
                drawbtn("+/-", Colors.white),
                drawbtn("%", Colors.amber),
                drawbtn("/", Colors.amber),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                drawbtn("7", Colors.grey),
                drawbtn("8", Colors.grey),
                drawbtn("9", Colors.grey),
                drawbtn("X", Colors.amber),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                drawbtn("4", Colors.grey),
                drawbtn("5", Colors.grey),
                drawbtn("6", Colors.grey),
                drawbtn("-", Colors.amber),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                drawbtn("1", Colors.grey),
                drawbtn("2", Colors.grey),
                drawbtn("3", Colors.grey),
                drawbtn("+", Colors.amber),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                drawbtn("0", Colors.grey),
                drawbtn(".", Colors.grey),
                drawbtn("=", Colors.amber),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget drawbtn(String btnText, Color color) {
  return Container(
    margin: EdgeInsets.only(bottom: 10.0),
    child: RaisedButton(
      onPressed: () {},
      child: Text(
        btnText,
        style: TextStyle(fontSize: 30),
      ),
      padding: EdgeInsets.all(20),
      color: color,
      shape: CircleBorder(),
    ),
  );
}
