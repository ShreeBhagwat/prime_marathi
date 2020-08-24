
class GreetImage {
    String wall_image_name;
    String wall_title;
    String wtotal_share;
    String wtotal_views;

    GreetImage({this.wall_image_name, this.wall_title, this.wtotal_share, this.wtotal_views});

    factory GreetImage.fromJson(Map<String, dynamic> json) {
        return GreetImage(
            wall_image_name: json['wall_image_name'], 
            wall_title: json['wall_title'], 
            wtotal_share: json['wtotal_share'], 
            wtotal_views: json['wtotal_views'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['wall_image_name'] = this.wall_image_name;
        data['wall_title'] = this.wall_title;
        data['wtotal_share'] = this.wtotal_share;
        data['wtotal_views'] = this.wtotal_views;
        return data;
    }
}