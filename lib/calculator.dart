// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcButton(String btnText, Color btnColor, Color txtColor) {
    return Container(
      child: ElevatedButton(
        onPressed: () => {
          //TODO
        },
        child: Text(
          btnText,
          style: TextStyle(fontSize: 25, color: txtColor),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(70, 70),
          shape: CircleBorder(),
          primary: btnColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "0",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("C", Colors.grey, Colors.black),
                calcButton("+/-", Colors.grey, Colors.black),
                calcButton("%", Colors.grey, Colors.black),
                calcButton("/", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("7", (Colors.grey[850])!, Colors.white),
                calcButton("8", (Colors.grey[850])!, Colors.white),
                calcButton("9", (Colors.grey[850])!, Colors.white),
                calcButton("x", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("4", (Colors.grey[850])!, Colors.white),
                calcButton("5", (Colors.grey[850])!, Colors.white),
                calcButton("6", (Colors.grey[850])!, Colors.white),
                calcButton("-", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("1", (Colors.grey[850])!, Colors.white),
                calcButton("2", (Colors.grey[850])!, Colors.white),
                calcButton("3", (Colors.grey[850])!, Colors.white),
                calcButton("+", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(28, 12, 90, 12),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: (Colors.grey[850])!,
                  ),
                ),
                calcButton(".", (Colors.grey[850])!, Colors.white),
                calcButton("=", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
