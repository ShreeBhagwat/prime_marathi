import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:prime_marathi/Views/detail_news_view.dart';
import 'package:prime_marathi/Widgets/home_news_card_bottom.dart';
import 'package:prime_marathi/components/AllButton.dart';
import 'package:prime_marathi/components/constant.dart';
import 'package:prime_marathi/components/reusable_card.dart';
import 'package:flutter/material.dart';

import 'home_new_card_top.dart';

Widget image_news(BuildContext context, Map<String, dynamic> list, String baseUrl){
  var width = MediaQuery.of(context).size.width;
  return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          home_news_card_top(),
          list["news_featured_image"] != null ?
          CachedNetworkImage(
            imageUrl: baseUrl + list["news_featured_image"], width: width, fit: BoxFit.fitWidth,
          ) : Container(),
          Container(
            width: width,
            color: Colors.blueGrey[50],
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(list["news_heading"], style: kTeacherHeadingStyle,),
            ),
          ),
          home_news_card_bottom(context, list, baseUrl),
          SizedBox(height: 10),
          Container(
            height: 5,
            color: Colors.grey[300],
          ),
        ],
      );

}

