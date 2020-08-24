
class Trending {
    String cat_id;
    String category_name;
    String id;
    int newsListNo;
    String news_date;
    String news_description;
    String news_featured_image;
    String news_featured_thumb;
    String news_heading;
    String news_type;
    String news_video_duration;
    String news_video_height;
    String news_video_id;
    String news_video_type;
    String news_video_url;
    String news_video_width;
    String news_weburl;
    int total_comments;
    String total_share;
    String total_views;

    Trending({this.cat_id, this.category_name, this.id, this.newsListNo, this.news_date, this.news_description, this.news_featured_image, this.news_featured_thumb, this.news_heading, this.news_type, this.news_video_duration, this.news_video_height, this.news_video_id, this.news_video_type, this.news_video_url, this.news_video_width, this.news_weburl, this.total_comments, this.total_share, this.total_views});

    factory Trending.fromJson(Map<String, dynamic> json) {
        return Trending(
            cat_id: json['cat_id'], 
            category_name: json['category_name'], 
            id: json['id'], 
            newsListNo: json['newsListNo'], 
            news_date: json['news_date'], 
            news_description: json['news_description'], 
            news_featured_image: json['news_featured_image'], 
            news_featured_thumb: json['news_featured_thumb'], 
            news_heading: json['news_heading'], 
            news_type: json['news_type'], 
            news_video_duration: json['news_video_duration'], 
            news_video_height: json['news_video_height'], 
            news_video_id: json['news_video_id'], 
            news_video_type: json['news_video_type'], 
            news_video_url: json['news_video_url'], 
            news_video_width: json['news_video_width'], 
            news_weburl: json['news_weburl'], 
            total_comments: json['total_comments'], 
            total_share: json['total_share'], 
            total_views: json['total_views'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cat_id'] = this.cat_id;
        data['category_name'] = this.category_name;
        data['id'] = this.id;
        data['newsListNo'] = this.newsListNo;
        data['news_date'] = this.news_date;
        data['news_description'] = this.news_description;
        data['news_featured_image'] = this.news_featured_image;
        data['news_featured_thumb'] = this.news_featured_thumb;
        data['news_heading'] = this.news_heading;
        data['news_type'] = this.news_type;
        data['news_video_duration'] = this.news_video_duration;
        data['news_video_height'] = this.news_video_height;
        data['news_video_id'] = this.news_video_id;
        data['news_video_type'] = this.news_video_type;
        data['news_video_url'] = this.news_video_url;
        data['news_video_width'] = this.news_video_width;
        data['news_weburl'] = this.news_weburl;
        data['total_comments'] = this.total_comments;
        data['total_share'] = this.total_share;
        data['total_views'] = this.total_views;
        return data;
    }
}