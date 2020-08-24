import 'package:prime_marathi/modles/Event.dart';
import 'package:prime_marathi/modles/GreetImage.dart';
import 'package:prime_marathi/modles/Trending.dart';



class ALLINONENEWS {
    String cat_id;
    String category_name;
    List<Event> eventList;
    List<GreetImage> greet_image;
    String id;
    int listID;
    String news_date;
    String news_description;
    String news_featured_image;
    String news_featured_thumb;
    String news_heading;
    String news_link;
    String news_type;
    String news_video_duration;
    String news_video_height;
    String news_video_id;
    String news_video_type;
    String news_video_url;
    String news_video_width;
    String news_weburl;
    String pageID;
    String pageName;
    String pageProfileImg;
    int pagination_limit;
    String postType;
    String total_like;
    String total_news;
    String total_share;
    String total_views;
    List<Trending> trendingList;

    ALLINONENEWS({this.cat_id, this.category_name, this.eventList, this.greet_image, this.id, this.listID, this.news_date, this.news_description, this.news_featured_image, this.news_featured_thumb, this.news_heading, this.news_link, this.news_type, this.news_video_duration, this.news_video_height, this.news_video_id, this.news_video_type, this.news_video_url, this.news_video_width, this.news_weburl, this.pageID, this.pageName, this.pageProfileImg, this.pagination_limit, this.postType, this.total_like, this.total_news, this.total_share, this.total_views, this.trendingList});

    factory ALLINONENEWS.fromJson(Map<String, dynamic> json) {
        return ALLINONENEWS(
            cat_id: json['cat_id'], 
            category_name: json['category_name'], 
            eventList: json['eventList'] != null ? (json['eventList'] as List).map((i) => Event.fromJson(i)).toList() : null, 
            greet_image: json['greet_image'] != null ? (json['greet_image'] as List).map((i) => GreetImage.fromJson(i)).toList() : null, 
            id: json['id'], 
            listID: json['listID'], 
            news_date: json['news_date'], 
            news_description: json['news_description'], 
            news_featured_image: json['news_featured_image'], 
            news_featured_thumb: json['news_featured_thumb'], 
            news_heading: json['news_heading'], 
            news_link: json['news_link'], 
            news_type: json['news_type'], 
            news_video_duration: json['news_video_duration'], 
            news_video_height: json['news_video_height'], 
            news_video_id: json['news_video_id'], 
            news_video_type: json['news_video_type'], 
            news_video_url: json['news_video_url'], 
            news_video_width: json['news_video_width'], 
            news_weburl: json['news_weburl'], 
            pageID: json['pageID'], 
            pageName: json['pageName'], 
            pageProfileImg: json['pageProfileImg'], 
            pagination_limit: json['pagination_limit'], 
            postType: json['postType'], 
            total_like: json['total_like'], 
            total_news: json['total_news'], 
            total_share: json['total_share'], 
            total_views: json['total_views'], 
            trendingList: json['trendingList'] != null ? (json['trendingList'] as List).map((i) => Trending.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cat_id'] = this.cat_id;
        data['category_name'] = this.category_name;
        data['id'] = this.id;
        data['listID'] = this.listID;
        data['news_date'] = this.news_date;
        data['news_description'] = this.news_description;
        data['news_featured_image'] = this.news_featured_image;
        data['news_featured_thumb'] = this.news_featured_thumb;
        data['news_heading'] = this.news_heading;
        data['news_link'] = this.news_link;
        data['news_type'] = this.news_type;
        data['news_video_duration'] = this.news_video_duration;
        data['news_video_height'] = this.news_video_height;
        data['news_video_id'] = this.news_video_id;
        data['news_video_type'] = this.news_video_type;
        data['news_video_url'] = this.news_video_url;
        data['news_video_width'] = this.news_video_width;
        data['news_weburl'] = this.news_weburl;
        data['pageID'] = this.pageID;
        data['pageName'] = this.pageName;
        data['pageProfileImg'] = this.pageProfileImg;
        data['pagination_limit'] = this.pagination_limit;
        data['postType'] = this.postType;
        data['total_like'] = this.total_like;
        data['total_news'] = this.total_news;
        data['total_share'] = this.total_share;
        data['total_views'] = this.total_views;
        if (this.eventList != null) {
            data['eventList'] = this.eventList.map((v) => v.toJson()).toList();
        }
        if (this.greet_image != null) {
            data['greet_image'] = this.greet_image.map((v) => v.toJson()).toList();
        }
        if (this.trendingList != null) {
            data['trendingList'] = this.trendingList.map((v) => v.toJson()).toList();
        }
        return data;
    }
}