import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:prime_marathi/Widgets/DetailsNewsWidgets/comments_widgets.dart';
import 'package:prime_marathi/components/constant.dart';
import 'package:http/http.dart' as http;


class DetailNewsView extends StatefulWidget {
  static String detailNewsView = "detail_news_view";

  String base_image_url;
  Map<String, dynamic> newsDataList;

  DetailNewsView(this.base_image_url, this.newsDataList);
  @override
  _DetailNewsViewState createState() => _DetailNewsViewState(this.base_image_url, this.newsDataList);
}

class _DetailNewsViewState extends State<DetailNewsView> {


  String base_image_url;
  Map<String, dynamic> newsDataList;
  _DetailNewsViewState(this.base_image_url, this.newsDataList);

  final String _baseUrl_2 = "http://marathi.primemedia.tv/app/api_ios.php?";
  final String extentionComment = "method_name=get_comments&news_id=";
  final String extentionRelatedNews = 'method_name=get_related_news&cat_id=';
  List<dynamic> commentList = List<dynamic>();
  List<dynamic> relatedNewsList = List<dynamic>();


  int pageNumber = 1;
  int relatedNewsPageNumber = 1;

  bool isLoading = false;


  bool showComments = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(newsDataList);
    getComments();
    getRelatedNews();

  }

  getComments() async {

    final url = _baseUrl_2+extentionComment+newsDataList["id"]+"&page=$pageNumber";
    http.Response res =  await http.get(url);


    if(res.statusCode == 200){
      Map<String, dynamic> body = jsonDecode(res.body);
//      await Future.delayed(new Duration(seconds: 2));

      setState(() {

        var list = body["ALL_IN_ONE_NEWS"];
        commentList.addAll(list);
//        print(commentList);
//        home_news_list.add(news);
//        present = present + perPage;
        print(commentList);
        isLoading = false;
        pageNumber += 1;

      });

    }else{
      throw "Cnt Get Comments";
    }
  }

  getRelatedNews() async {
    final url = _baseUrl_2+extentionRelatedNews+newsDataList["cat_id"]+"&page=$relatedNewsPageNumber";
    http.Response res =  await http.get(url);


    if(res.statusCode == 200){
      Map<String, dynamic> body = jsonDecode(res.body);
//      await Future.delayed(new Duration(seconds: 2));

      setState(() {

        var list = body["ALL_IN_ONE_NEWS"];
        relatedNewsList.addAll(list);
//        print(relatedNewsList.length);

        isLoading = false;
        relatedNewsPageNumber += 1;

      });

    }else{
      throw "Cnt Get Comments";
    }
  }



  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:NestedScrollView(

        
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              iconTheme: IconThemeData(
                color: Colors.white
              ),
//              floating: true,
//              pinned: true,
              backgroundColor: Colors.white,


              flexibleSpace: FlexibleSpaceBar(

                  background: CachedNetworkImage(
                    imageUrl: base_image_url + newsDataList["news_featured_image"],
                    fit: BoxFit.fitWidth,
                  )
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                color: Colors.blueGrey[50],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(newsDataList["news_heading"], style: kTeacherHeadingStyle,),
                ),
              ),
              Container(
//                width: width,
//                color: Colors.blueGrey[50],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("2 Hours ago", style: TextStyle(fontSize: 12, color: Colors.grey[800]),),
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Html(
                    data: newsDataList["news_description"],
                  ),
                ),
              ),
              bottomCommentsSection(context),

              Container(
                width: width,
                height: 1,
                color: Colors.blueGrey[100],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 5),
                    child: Text("Related News",),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 20, 20),
                    child: GestureDetector(
                      child: Text('All Comments'),
                      onTap: (){
                        //TODO
                        print("All Comments Page");
                      },
                    ),
                  ),
                ],
              ),
              Container(
                width: width,
                height: 1,
                color: Colors.blueGrey[100],
              ),

              relatedNewsList.length >=1 ? relatedNews(context) : Container(),
              SizedBox(height: 10,)


            ],
          ),
        ),
      ),
    );
  }

  Widget bottomCommentsSection(BuildContext context){
    var width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Comments (${newsDataList["total_comments"]})"),
            ),
            Spacer(),
            Container(
              width: width / 5,
              child: Row(
                children: [
                  Image.asset("images/thumbs_up.png", width: 25, height: 25, fit: BoxFit.fitHeight,),
                  SizedBox(width: 4,),
                  Text(newsDataList["total_likes"] != null ? newsDataList["total_likes"].toString() : "0")
                ],

              ),
            ),


            Container(
              width: width / 5,

              child: Row(
                children: [
                  Image.asset("images/message.png", width: 20, height: 20, fit: BoxFit.fitHeight,),
                  SizedBox(width: 4,),

                  Text(newsDataList["total_comments"] != null ? newsDataList["total_comments"].toString() : "0")
                ],

              ),
            ),
            Container(
              width: width / 5,

              child: Row(
                children: [
                  Image.asset("images/whatsapp.png", width: 20, height: 20, fit: BoxFit.fitHeight,),
                  SizedBox(width: 4,),

                  Text(newsDataList["total_shares"] != null ? newsDataList["total_shares"].toString() : "0")
                ],

              ),
            ),
          ],
        ),
        Container(
          width: width,
          height: 1,
          color: Colors.blueGrey[100],
        ),

        commentList.length >=1 ? ListView.builder(

          itemCount: commentList.length,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index){
            return Comment_Widgets(context, commentList[index], base_image_url);
          },

        ) : Container()
      ],



    );
  }

  Widget relatedNews(BuildContext context){
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: relatedNewsList.length,
      itemBuilder: (context, index){
        return Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: CachedNetworkImage(
                      imageUrl: base_image_url + relatedNewsList[index]["news_featured_image"].toString(),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width - 150,
                    child:AutoSizeText(relatedNewsList[index]["news_heading"].toString(), maxLines: 2, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                    ,
                  ),
                ),

              ],
            ),
            Container(
              width: width,
              height: 1,
              color: Colors.blueGrey[100],
            ),
          ],
        );
      },
    );
  }
}
