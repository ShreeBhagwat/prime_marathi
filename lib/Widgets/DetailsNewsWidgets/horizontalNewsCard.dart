import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

Widget hosrizontalNewsCard(BuildContext context, Map<String, dynamic> list, String baseUrl){
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: CachedNetworkImage(
            imageUrl: list["news_featured_thumb"], width: 100,height: 100,fit: BoxFit.cover,
          ),

        ),
      ),
      Text(list["news_headind"])
    ],
  );
}