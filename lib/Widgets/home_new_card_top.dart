import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:prime_marathi/components/AllButton.dart';

class home_news_card_top extends StatelessWidget {
  const home_news_card_top({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircularProfileAvatar(
            "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
            radius: 20,
            backgroundColor: Colors.transparent,
            elevation: 5,
            cacheImage: true,
          ),

        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text("Prime Marathi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text("2 Min Ago")
          ],
        ),
        Spacer(),
        normalButton(
          color: Colors.blue[900],
          title: 'Follow',
          onPressed: (){

          },
        ),
        SizedBox(width: 20,)
      ],
    );
  }
}