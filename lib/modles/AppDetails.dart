
class AppDetails {
    String app_author;
    String app_contact;
    String app_description;
    String app_developed_by;
    String app_email;
    String app_logo;
    String app_name;
    String app_privacy_policy;
    String app_version;
    String app_website;
    String banner_ad;
    String banner_ad_id;
    String banner_home;
    String banner_home_status;
    String channel_status;
    String interstital_ad;
    String interstital_ad_click;
    String interstital_ad_id;
    String package_name;
    String publisher_id;
    String user_category;
    String webprev_title;
    String webprev_url;

    AppDetails({this.app_author, this.app_contact, this.app_description, this.app_developed_by, this.app_email, this.app_logo, this.app_name, this.app_privacy_policy, this.app_version, this.app_website, this.banner_ad, this.banner_ad_id, this.banner_home, this.banner_home_status, this.channel_status, this.interstital_ad, this.interstital_ad_click, this.interstital_ad_id, this.package_name, this.publisher_id, this.user_category, this.webprev_title, this.webprev_url});

    factory AppDetails.fromJson(Map<String, dynamic> json) {
        return AppDetails(
            app_author: json['app_author'], 
            app_contact: json['app_contact'], 
            app_description: json['app_description'], 
            app_developed_by: json['app_developed_by'], 
            app_email: json['app_email'], 
            app_logo: json['app_logo'], 
            app_name: json['app_name'], 
            app_privacy_policy: json['app_privacy_policy'], 
            app_version: json['app_version'], 
            app_website: json['app_website'], 
            banner_ad: json['banner_ad'], 
            banner_ad_id: json['banner_ad_id'], 
            banner_home: json['banner_home'], 
            banner_home_status: json['banner_home_status'], 
            channel_status: json['channel_status'], 
            interstital_ad: json['interstital_ad'], 
            interstital_ad_click: json['interstital_ad_click'], 
            interstital_ad_id: json['interstital_ad_id'], 
            package_name: json['package_name'], 
            publisher_id: json['publisher_id'], 
            user_category: json['user_category'], 
            webprev_title: json['webprev_title'], 
            webprev_url: json['webprev_url'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['app_author'] = this.app_author;
        data['app_contact'] = this.app_contact;
        data['app_description'] = this.app_description;
        data['app_developed_by'] = this.app_developed_by;
        data['app_email'] = this.app_email;
        data['app_logo'] = this.app_logo;
        data['app_name'] = this.app_name;
        data['app_privacy_policy'] = this.app_privacy_policy;
        data['app_version'] = this.app_version;
        data['app_website'] = this.app_website;
        data['banner_ad'] = this.banner_ad;
        data['banner_ad_id'] = this.banner_ad_id;
        data['banner_home'] = this.banner_home;
        data['banner_home_status'] = this.banner_home_status;
        data['channel_status'] = this.channel_status;
        data['interstital_ad'] = this.interstital_ad;
        data['interstital_ad_click'] = this.interstital_ad_click;
        data['interstital_ad_id'] = this.interstital_ad_id;
        data['package_name'] = this.package_name;
        data['publisher_id'] = this.publisher_id;
        data['user_category'] = this.user_category;
        data['webprev_title'] = this.webprev_title;
        data['webprev_url'] = this.webprev_url;
        return data;
    }
}