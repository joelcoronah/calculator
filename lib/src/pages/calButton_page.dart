import 'package:flutter/material.dart';

class CalButtonPage extends StatelessWidget {
  final String text;
  final Color color;
  final Color backGroundColor;
  final Function action;

  const CalButtonPage(
      {Key key, this.text, this.color, this.backGroundColor, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 70,
      height: 70,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor:
              backGroundColor != null ? backGroundColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        onPressed: () {
          print('boton $text');
          action(text);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 40,
            color: color != null ? color : Colors.black87,
          ),
        ),
      ),
    );
  }
}
