import 'package:flutter/material.dart';


class roundedButton extends StatelessWidget {

  roundedButton({this.title, this.color, @required this.onPressed});

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Hero(
        tag: 'login_button',
        child: Material(
          elevation: 5.0,
          color: color,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            onPressed: onPressed,
            minWidth: 200.0,
            height: 42.0,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class normalButton extends StatelessWidget {
  normalButton ({this.title, this.color, @required this.onPressed});

  final String title;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FlatButton (
      child: Text (
        title,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w300,
          color: color,
        ),
      ),
      onPressed: onPressed,
    );
  }
}


class customRoundButton extends StatelessWidget {

  customRoundButton({this.title, this.textColor,this.color, this.height, this.width, @required this.onPressed});

  final Color color;
  final String title;
  final Function onPressed;
  final double width;
  final double height;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width,
          height: height,
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

