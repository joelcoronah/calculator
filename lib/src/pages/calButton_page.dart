import 'package:flutter/material.dart';

class CalButtonPage extends StatelessWidget {
  final String text;
  const CalButtonPage({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 65,
      height: 65,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        onPressed: () {
          print('boton $text');
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
