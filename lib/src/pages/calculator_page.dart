import 'package:calculator/src/pages/calButton_page.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  CalculatorApp({Key key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _operation = '';
  String _historical = '';

  void calculate() {
    Parser p = Parser();
    Expression exp = p.parse(_operation);

    // Bind variables:
    ContextModel cm = ContextModel();
    // Evaluate expression:
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _historical = _operation;
      _operation = eval.toString();
    });
  }

  void createNum(String text) {
    setState(() => _operation += text);
  }

  void clearAll() {
    setState(() {
      _operation = '';
      _historical = '';
    });
  }

  void clear() {
    setState(() {
      _operation = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              alignment: Alignment(0.8, 1),
              child: Text(
                _historical,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.8, 1),
              child: Text(
                _operation,
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(
                  text: 'AC',
                  backGroundColor: Colors.blueAccent,
                  color: Colors.white,
                  action: (item) {
                    clearAll();
                  },
                ),
                CalButtonPage(
                  text: 'C',
                  backGroundColor: Colors.blueAccent,
                  color: Colors.white,
                  action: (item) {
                    clear();
                  },
                ),
                CalButtonPage(
                  text: '%',
                  color: Colors.blueAccent,
                  action: createNum,
                ),
                CalButtonPage(
                  text: '/',
                  color: Colors.blueAccent,
                  action: createNum,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(text: '7', action: createNum),
                CalButtonPage(text: '8', action: createNum),
                CalButtonPage(text: '9', action: createNum),
                CalButtonPage(
                    text: '*', color: Colors.blueAccent, action: createNum),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(text: '4', action: createNum),
                CalButtonPage(text: '5', action: createNum),
                CalButtonPage(text: '6', action: createNum),
                CalButtonPage(
                    text: '-', color: Colors.blueAccent, action: createNum),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(text: '1', action: createNum),
                CalButtonPage(text: '2', action: createNum),
                CalButtonPage(text: '3', action: createNum),
                CalButtonPage(
                    text: '+', color: Colors.blueAccent, action: createNum),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalButtonPage(text: '.', action: createNum),
                CalButtonPage(text: '0', action: createNum),
                CalButtonPage(text: '00', action: createNum),
                CalButtonPage(
                    text: '=',
                    color: Colors.blueAccent,
                    action: (item) => calculate()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
