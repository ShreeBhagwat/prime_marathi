import 'dart:convert';
import 'dart:async';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:prime_marathi/Views/detail_news_view.dart';
import 'package:prime_marathi/Widgets/Greet_News_sts.dart';
import 'package:prime_marathi/Widgets/Short_Video_sts.dart';
import 'package:prime_marathi/Widgets/image_news.dart';

import 'package:prime_marathi/modles/itemNews.dart';

import 'package:http/http.dart' as http;


class HomeView2 extends StatefulWidget {
  static String homeView2Route = "home_view_2";
  @override
  _HomeView2State createState() => _HomeView2State();
}

class _HomeView2State extends State<HomeView2> {


  List<dynamic> news = List<dynamic>();
  List<dynamic> news_new_list;
  List<dynamic> home_news_list;

  bool isLoading = false;

  final String _baseUrl = "http://marathi.primemedia.tv/app/apitest.php?";
  final String _baseUrl_2 = "http://marathi.primemedia.tv/app/api_ios.php?";
  final String extention = "method_name=get_home_news2&page=";
  final String base_image_url = "https://marathi.primemedia.tv/app/";
  int pageNumber = 1;
  int perPage = 10;
  int present = 0;

  final List<String> _tabs = <String>[
    "For You",
    "News",
    "Following",
    "Corona",
    "Daily",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }


  Future <List<itemNews>> getNews() async {
    print("page_number $pageNumber");

    final url = _baseUrl_2 + extention+pageNumber.toString();
    http.Response res =  await http.get(url);


    if(res.statusCode == 200){
      Map<String, dynamic> body = jsonDecode(res.body);
//      await Future.delayed(new Duration(seconds: 2));

      setState(() {

        var list = body["ALL_IN_ONE_NEWS"];
          news.addAll(list);
//        home_news_list.add(news);
//        present = present + perPage;
          isLoading = false;
          pageNumber += 1;

      });

    }else{
      throw "Cnt Get News";
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(

          headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller){
            return<Widget>[
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    expandedHeight: 125.0,
                    backgroundColor: Colors.white,
                    flexibleSpace: FlexibleSpaceBar(
                        background: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
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
                            Image.asset("images/prime-logo.png", height: 40, fit: BoxFit.fitHeight,),
                            Spacer(),

                            Container(
                              width: 25,height: 25,
                              child: FlatButton(
                                child: Icon(Icons.search),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 25, 0),
                              child: Container(
                                width: 25,height: 25,
                                child: FlatButton(
                                  child: Icon(Icons.notifications_none),
                                ),
                              ),
                            ),

                          ],
                        )
                    ),
                    floating: true,
                    pinned: true,
//                    snap: true,
                    primary: true,
                    forceElevated: innerBoxIsScroller,
                    bottom:  TabBar(
                      labelColor: Colors.purple,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.purple,
                      labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      isScrollable: true,
                      tabs: _tabs
                          .map((String name) => Tab(text: name))
                          .toList(),
                    ),

                  ),
                ];
          },

          body: TabBarView(
            children: <Widget>[
              !news.isEmpty ? home_news(context) : Center(child: Container(width: 50, height: 50, child: CircularProgressIndicator())),
//              Center(child: Text('News')),
              Center(child: Text('News')),
              Center(child: Text('Following')),
              Center(child: Text('Corona')),
              Center(child: Text('Daily')),

            ],
          ),

        ),
      ),




    );

  }

  Widget home_news(BuildContext context){
      return Column(
          children: [
            NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollInfo){
                if(!isLoading && scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent){
                  setState(() {
//                  pageNumber += 1;
                    getNews();
                    isLoading = true;
                  });
                }

              },
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: news.length,
                  cacheExtent: 1000,
                  itemBuilder: (context, index){
                    var newsType = news[index]["news_type"];
                    if(newsType == "image"){
                      return GestureDetector(child: image_news(context, news[index], base_image_url), onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailNewsView(base_image_url, news[index]))
                        );
                      });
                    } else if (newsType == "greet"){
                      return Greet_News(base_image_url, news[index]);
                    }else if (newsType == "short_video"){
                      return ShortVideo(base_image_url, news[index]);
                    }else{
                      return image_news(context, news[index], base_image_url);
                    }
                  },
                ),
              ),
            ),
            Container(
              height: isLoading ? 50.0 : 0,
              color: Colors.transparent,
              child: Center(
                child: new CircularProgressIndicator(),
              ),
            ),
          ],
        );

  }
}



