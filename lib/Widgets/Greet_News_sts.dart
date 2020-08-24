import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_marathi/components/constant.dart';

import 'home_new_card_top.dart';

class Greet_News extends StatefulWidget {
  String base_image_url;
  Map<String, dynamic> greetImageList;

  Greet_News(this.base_image_url, this.greetImageList);
  @override
  _Greet_NewsState createState() => _Greet_NewsState(this.greetImageList, this.base_image_url);
}

class _Greet_NewsState extends State<Greet_News> {

  String base_image_url;
  Map<String, dynamic> greetImageList;

  _Greet_NewsState(this.greetImageList, this.base_image_url);
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    List<dynamic> imageList = greetImageList["greet_image"];

    return Container(
      width: width,
      child: Column(


        children: [
          home_news_card_top(),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [CarouselSlider.builder(
              itemCount: imageList.length,
              options: CarouselOptions(
                  viewportFraction: 1.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason){
                    setState(() {
                      currentIndex = index;
                    });
                  }
              ),
              itemBuilder: (context, index){
                return CachedNetworkImage(
                  imageUrl: base_image_url + imageList[index]["wall_image_name"].toString(),
//                  width: width,
//                  fit: BoxFit.fitWidth,
                );
              },
            ),
              Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.bottomCenter,
                
                color: Colors.black54,
                child: Column(
                  children: [ imageList.length >= 2 ?
                    DotsIndicator(
                      dotsCount: imageList.length,
                      position: currentIndex.toDouble(),
                      decorator: DotsDecorator(
                        color: Colors.white, // Inactive color
                        activeColor: Colors.purple,
                      ),
                    ): Container(),

                     Text(imageList[currentIndex]["wall_title"], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                  ],
                ),

              ),



            ]
          ),
//          Container(
//            width: width,
//            height: 70,
//            color: Colors.blueGrey[50],
//            child: Padding(
//              padding: const EdgeInsets.all(10.0),
//              child: Text(imageList[currentIndex]["wall_title"], style: kTeacherHeadingStyle,),
//            ),
//          ),
      Row(
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
      ),
          Container(
            height: 5,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
