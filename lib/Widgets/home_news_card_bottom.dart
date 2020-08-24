import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_marathi/components/constant.dart';

Widget home_news_card_bottom(BuildContext context, Map<String, dynamic> list, String baseUrl){
  var width = MediaQuery.of(context).size.width;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(width: 10,),
      Container(
        width: width / 5,
        child: Row(
          children: [
            Image.asset("images/thumbs_up.png", width: 25, height: 25, fit: BoxFit.fitHeight,),
            SizedBox(width: 4,),
            Text("400")
          ],

        ),
      ),

      Container(
        width: width / 5,

        child: Row(
          children: [
            Image.asset("images/message.png", width: 20, height: 20, fit: BoxFit.fitHeight,),
            SizedBox(width: 4,),

            Text("400")
          ],

        ),
      ),
      Container(
        width: width / 5,

        child: Row(
          children: [
            Image.asset("images/whatsapp.png", width: 20, height: 20, fit: BoxFit.fitHeight,),
            SizedBox(width: 4,),

            Text("400")
          ],

        ),
      ),
      Container(
        width: width / 5,

        child: Row(
          children: [
            Image.asset("images/views.png", width: 20, height: 20, fit: BoxFit.fitHeight,),
            SizedBox(width: 4,),

            Text("400")
          ],

        ),
      ),
      Container(
        width: width / 7,

        child: FlatButton(
          onPressed: (){
            print("Hello Button");
          },
          child: Center(child: Icon(Icons.more_vert)),
        ),
      )



    ],
  );

}