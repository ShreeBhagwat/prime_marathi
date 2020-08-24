import 'package:flutter/cupertino.dart';
import 'package:prime_marathi/modles/ALLINONENEWS.dart';
import 'package:prime_marathi/modles/response.dart';
import 'package:prime_marathi/networking/ApiProvider.dart';

class AllInOneNewsRepository {
  ApiProvider _provider =  ApiProvider();

  Future<ALLINONENEWS> get_home_news(String cat_id, @required String page_number, String user_id) async {

      final response = await _provider.post("method_name=get_home_news2&page=" + page_number);
      return ALLINONENEWS.fromJson(response);
  }

}