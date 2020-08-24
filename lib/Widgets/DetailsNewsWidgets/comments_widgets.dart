import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:prime_marathi/components/constant.dart';
import 'package:flutter/material.dart';

Widget Comment_Widgets (BuildContext context, Map<String, dynamic> list, String baseUr){
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: base_image_url +  list["user_profile"], width: 75, height: 75, fit: BoxFit.cover,
                placeholder: (context, url) => Image.asset("images/video_view.png", width: 75, height: 75, fit: BoxFit.fitWidth,)
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Text(list["user_name"].toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),),
              ),
              Container(
                child: AutoSizeText(
                  list["comment_text"].toString()
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      list["comment_on"].toString(), style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Text("Reply", style: TextStyle(fontSize: 12, color: Colors.blueGrey)),
                      onTap: (){
                        //TODO
                        print("Reply Button Pressend");
                      },
                    ),
                  ),
                ],
              ),

            ],

          ),
        ],
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey[100],
        height: 1,
      ),
    ],
  );
}