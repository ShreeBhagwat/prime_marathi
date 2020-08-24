
import 'package:prime_marathi/modles/ALLINONENEWS.dart';

class response {
    List<ALLINONENEWS> aLL_IN_ONE_NEWS;

    response({this.aLL_IN_ONE_NEWS});

    factory response.fromJson(Map<String, dynamic> json) {
        return response(
            aLL_IN_ONE_NEWS: json['aLL_IN_ONE_NEWS'] != null ? (json['aLL_IN_ONE_NEWS'] as List).map((i) => ALLINONENEWS.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.aLL_IN_ONE_NEWS != null) {
            data['aLL_IN_ONE_NEWS'] = this.aLL_IN_ONE_NEWS.map((v) => v.toJson()).toList();
        }
        return data;
    }
}