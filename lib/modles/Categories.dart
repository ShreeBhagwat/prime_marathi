

class Categories {
    String category_image;
    String category_image_thumb;
    String category_name;
    String cid;

    Categories({this.category_image, this.category_image_thumb, this.category_name, this.cid});

    factory Categories.fromJson(Map<String, dynamic> json) {
        return Categories(
            category_image: json['category_image'], 
            category_image_thumb: json['category_image_thumb'], 
            category_name: json['category_name'], 
            cid: json['cid'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['category_image'] = this.category_image;
        data['category_image_thumb'] = this.category_image_thumb;
        data['category_name'] = this.category_name;
        data['cid'] = this.cid;
        return data;
    }
}