// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  Post({
    this.allInOneNews,
  });

  List<AllInOneNew> allInOneNews;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    allInOneNews: List<AllInOneNew>.from(json["ALL_IN_ONE_NEWS"].map((x) => AllInOneNew.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "ALL_IN_ONE_NEWS": List<dynamic>.from(allInOneNews.map((x) => x.toJson())),
  };
}

class AllInOneNew {
  AllInOneNew({
    this.postType,
    this.trendingList,
    this.paginationLimit,
    this.totalNews,
    this.id,
    this.newsType,
    this.newsHeading,
    this.newsDescription,
    this.newsVideoId,
    this.newsVideoType,
    this.newsWeburl,
    this.newsLink,
    this.newsVideoDuration,
    this.newsVideoWidth,
    this.newsVideoHeight,
    this.newsVideoUrl,
    this.newsDate,
    this.newsFeaturedImage,
    this.newsFeaturedThumb,
    this.totalViews,
    this.totalShare,
    this.totalLike,
    this.catId,
    this.categoryName,
    this.pageName,
    this.pageProfileImg,
    this.pageId,
    this.listId,
    this.eventList,
    this.greetImage,
  });

  PostType postType;
  List<TrendingList> trendingList;
  int paginationLimit;
  String totalNews;
  String id;
  NewsType newsType;
  String newsHeading;
  String newsDescription;
  NewsVideoId newsVideoId;
  NewsVideoType newsVideoType;
  String newsWeburl;
  String newsLink;
  NewsVideoDuration newsVideoDuration;
  String newsVideoWidth;
  String newsVideoHeight;
  String newsVideoUrl;
  String newsDate;
  String newsFeaturedImage;
  String newsFeaturedThumb;
  String totalViews;
  String totalShare;
  String totalLike;
  String catId;
  String categoryName;
  PageName pageName;
  PageProfileImg pageProfileImg;
  String pageId;
  int listId;
  List<EventList> eventList;
  List<GreetImage> greetImage;

  factory AllInOneNew.fromJson(Map<String, dynamic> json) => AllInOneNew(
    postType: postTypeValues.map[json["PostType"]],
    trendingList: json["TrendingList"] == null ? null : List<TrendingList>.from(json["TrendingList"].map((x) => TrendingList.fromJson(x))),
    paginationLimit: json["pagination_limit"] == null ? null : json["pagination_limit"],
    totalNews: json["total_news"] == null ? null : json["total_news"],
    id: json["id"] == null ? null : json["id"],
    newsType: json["news_type"] == null ? null : newsTypeValues.map[json["news_type"]],
    newsHeading: json["news_heading"] == null ? null : json["news_heading"],
    newsDescription: json["news_description"] == null ? null : json["news_description"],
    newsVideoId: json["news_video_id"] == null ? null : newsVideoIdValues.map[json["news_video_id"]],
    newsVideoType: json["news_video_type"] == null ? null : newsVideoTypeValues.map[json["news_video_type"]],
    newsWeburl: json["news_weburl"] == null ? null : json["news_weburl"],
    newsLink: json["news_link"] == null ? null : json["news_link"],
    newsVideoDuration: json["news_video_duration"] == null ? null : newsVideoDurationValues.map[json["news_video_duration"]],
    newsVideoWidth: json["news_video_width"] == null ? null : json["news_video_width"],
    newsVideoHeight: json["news_video_height"] == null ? null : json["news_video_height"],
    newsVideoUrl: json["news_video_url"] == null ? null : json["news_video_url"],
    newsDate: json["news_date"] == null ? null : json["news_date"],
    newsFeaturedImage: json["news_featured_image"] == null ? null : json["news_featured_image"],
    newsFeaturedThumb: json["news_featured_thumb"] == null ? null : json["news_featured_thumb"],
    totalViews: json["total_views"] == null ? null : json["total_views"],
    totalShare: json["total_share"] == null ? null : json["total_share"],
    totalLike: json["total_like"] == null ? null : json["total_like"],
    catId: json["cat_id"] == null ? null : json["cat_id"],
    categoryName: json["category_name"] == null ? null : json["category_name"],
    pageName: json["PageName"] == null ? null : pageNameValues.map[json["PageName"]],
    pageProfileImg: json["PageProfileImg"] == null ? null : pageProfileImgValues.map[json["PageProfileImg"]],
    pageId: json["PageID"] == null ? null : json["PageID"],
    listId: json["ListID"] == null ? null : json["ListID"],
    eventList: json["EventList"] == null ? null : List<EventList>.from(json["EventList"].map((x) => EventList.fromJson(x))),
    greetImage: json["greet_image"] == null ? null : List<GreetImage>.from(json["greet_image"].map((x) => GreetImage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "PostType": postTypeValues.reverse[postType],
    "TrendingList": trendingList == null ? null : List<dynamic>.from(trendingList.map((x) => x.toJson())),
    "pagination_limit": paginationLimit == null ? null : paginationLimit,
    "total_news": totalNews == null ? null : totalNews,
    "id": id == null ? null : id,
    "news_type": newsType == null ? null : newsTypeValues.reverse[newsType],
    "news_heading": newsHeading == null ? null : newsHeading,
    "news_description": newsDescription == null ? null : newsDescription,
    "news_video_id": newsVideoId == null ? null : newsVideoIdValues.reverse[newsVideoId],
    "news_video_type": newsVideoType == null ? null : newsVideoTypeValues.reverse[newsVideoType],
    "news_weburl": newsWeburl == null ? null : newsWeburl,
    "news_link": newsLink == null ? null : newsLink,
    "news_video_duration": newsVideoDuration == null ? null : newsVideoDurationValues.reverse[newsVideoDuration],
    "news_video_width": newsVideoWidth == null ? null : newsVideoWidth,
    "news_video_height": newsVideoHeight == null ? null : newsVideoHeight,
    "news_video_url": newsVideoUrl == null ? null : newsVideoUrl,
    "news_date": newsDate == null ? null : newsDate,
    "news_featured_image": newsFeaturedImage == null ? null : newsFeaturedImage,
    "news_featured_thumb": newsFeaturedThumb == null ? null : newsFeaturedThumb,
    "total_views": totalViews == null ? null : totalViews,
    "total_share": totalShare == null ? null : totalShare,
    "total_like": totalLike == null ? null : totalLike,
    "cat_id": catId == null ? null : catId,
    "category_name": categoryName == null ? null : categoryName,
    "PageName": pageName == null ? null : pageNameValues.reverse[pageName],
    "PageProfileImg": pageProfileImg == null ? null : pageProfileImgValues.reverse[pageProfileImg],
    "PageID": pageId == null ? null : pageId,
    "ListID": listId == null ? null : listId,
    "EventList": eventList == null ? null : List<dynamic>.from(eventList.map((x) => x.toJson())),
    "greet_image": greetImage == null ? null : List<dynamic>.from(greetImage.map((x) => x.toJson())),
  };
}

class EventList {
  EventList({
    this.eventId,
    this.eventName,
    this.eventUrl,
    this.eventThumb,
  });

  String eventId;
  String eventName;
  String eventUrl;
  String eventThumb;

  factory EventList.fromJson(Map<String, dynamic> json) => EventList(
    eventId: json["EventID"],
    eventName: json["EventName"],
    eventUrl: json["EventURL"],
    eventThumb: json["EventThumb"],
  );

  Map<String, dynamic> toJson() => {
    "EventID": eventId,
    "EventName": eventName,
    "EventURL": eventUrl,
    "EventThumb": eventThumb,
  };
}

class GreetImage {
  GreetImage({
    this.wallImageName,
    this.wallTitle,
    this.wtotalViews,
    this.wtotalShare,
  });

  String wallImageName;
  String wallTitle;
  String wtotalViews;
  String wtotalShare;

  factory GreetImage.fromJson(Map<String, dynamic> json) => GreetImage(
    wallImageName: json["wall_image_name"],
    wallTitle: json["wall_title"],
    wtotalViews: json["wtotal_views"],
    wtotalShare: json["wtotal_share"],
  );

  Map<String, dynamic> toJson() => {
    "wall_image_name": wallImageName,
    "wall_title": wallTitle,
    "wtotal_views": wtotalViews,
    "wtotal_share": wtotalShare,
  };
}

enum NewsType { IMAGE, SHORT_VIDEO, GREET }

final newsTypeValues = EnumValues({
  "greet": NewsType.GREET,
  "image": NewsType.IMAGE,
  "short_video": NewsType.SHORT_VIDEO
});

enum NewsVideoDuration { THE_000, THE_241 }

final newsVideoDurationValues = EnumValues({
  "0:00": NewsVideoDuration.THE_000,
  "2:41": NewsVideoDuration.THE_241
});

enum NewsVideoId { EMPTY, THE_0_C7_Z_U_UIH_RAE }

final newsVideoIdValues = EnumValues({
  "": NewsVideoId.EMPTY,
  "0C7zUUihRAE": NewsVideoId.THE_0_C7_Z_U_UIH_RAE
});

enum NewsVideoType { EMPTY, YOUTUBE }

final newsVideoTypeValues = EnumValues({
  "": NewsVideoType.EMPTY,
  "youtube": NewsVideoType.YOUTUBE
});

enum PageName { PRIME_MARATHI }

final pageNameValues = EnumValues({
  "Prime Marathi": PageName.PRIME_MARATHI
});

enum PageProfileImg { PRIME_ICON_PNG }

final pageProfileImgValues = EnumValues({
  "prime-icon.png": PageProfileImg.PRIME_ICON_PNG
});

enum PostType { TRENDING, NEWS, EVENT }

final postTypeValues = EnumValues({
  "Event": PostType.EVENT,
  "News": PostType.NEWS,
  "Trending": PostType.TRENDING
});

class TrendingList {
  TrendingList({
    this.id,
    this.newsType,
    this.newsHeading,
    this.newsDescription,
    this.newsVideoId,
    this.newsVideoUrl,
    this.newsVideoType,
    this.newsVideoDuration,
    this.newsVideoHeight,
    this.newsVideoWidth,
    this.newsWeburl,
    this.newsDate,
    this.newsFeaturedImage,
    this.newsFeaturedThumb,
    this.totalViews,
    this.totalShare,
    this.totalComments,
    this.catId,
    this.categoryName,
    this.newsListNo,
  });

  String id;
  NewsType newsType;
  String newsHeading;
  String newsDescription;
  String newsVideoId;
  String newsVideoUrl;
  String newsVideoType;
  NewsVideoDuration newsVideoDuration;
  String newsVideoHeight;
  String newsVideoWidth;
  String newsWeburl;
  String newsDate;
  String newsFeaturedImage;
  String newsFeaturedThumb;
  String totalViews;
  String totalShare;
  int totalComments;
  String catId;
  String categoryName;
  int newsListNo;

  factory TrendingList.fromJson(Map<String, dynamic> json) => TrendingList(
    id: json["id"],
    newsType: newsTypeValues.map[json["news_type"]],
    newsHeading: json["news_heading"],
    newsDescription: json["news_description"],
    newsVideoId: json["news_video_id"],
    newsVideoUrl: json["news_video_url"],
    newsVideoType: json["news_video_type"],
    newsVideoDuration: newsVideoDurationValues.map[json["news_video_duration"]],
    newsVideoHeight: json["news_video_height"],
    newsVideoWidth: json["news_video_width"],
    newsWeburl: json["news_weburl"],
    newsDate: json["news_date"],
    newsFeaturedImage: json["news_featured_image"],
    newsFeaturedThumb: json["news_featured_thumb"],
    totalViews: json["total_views"],
    totalShare: json["total_share"],
    totalComments: json["total_comments"],
    catId: json["cat_id"],
    categoryName: json["category_name"],
    newsListNo: json["NewsListNo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "news_type": newsTypeValues.reverse[newsType],
    "news_heading": newsHeading,
    "news_description": newsDescription,
    "news_video_id": newsVideoId,
    "news_video_url": newsVideoUrl,
    "news_video_type": newsVideoType,
    "news_video_duration": newsVideoDurationValues.reverse[newsVideoDuration],
    "news_video_height": newsVideoHeight,
    "news_video_width": newsVideoWidth,
    "news_weburl": newsWeburl,
    "news_date": newsDate,
    "news_featured_image": newsFeaturedImage,
    "news_featured_thumb": newsFeaturedThumb,
    "total_views": totalViews,
    "total_share": totalShare,
    "total_comments": totalComments,
    "cat_id": catId,
    "category_name": categoryName,
    "NewsListNo": newsListNo,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
