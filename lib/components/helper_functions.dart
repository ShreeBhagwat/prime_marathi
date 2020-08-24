import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HelperFunctions {

  void showAlert(BuildContext context, String title, String description, String buttonText, AlertType type, @required Function onPressed) {
    Alert(
      context: context,
      type: type,
      title: title,
      desc: description,
      buttons: [
        DialogButton(
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: onPressed,
          width: 120,
        )
      ],
    ).show();
  }



}