import 'package:calculator/src/pages/calButton_page.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(text: 'C'),
                CalButtonPage(text: 'X'),
                CalButtonPage(text: '%'),
                CalButtonPage(text: '/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(text: '7'),
                CalButtonPage(text: '8'),
                CalButtonPage(text: '9'),
                CalButtonPage(text: 'X'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(text: '4'),
                CalButtonPage(text: '5'),
                CalButtonPage(text: '6'),
                CalButtonPage(text: '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(text: '1'),
                CalButtonPage(text: '2'),
                CalButtonPage(text: '3'),
                CalButtonPage(text: '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(text: '0'),
                CalButtonPage(text: '.'),
                CalButtonPage(text: '='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
