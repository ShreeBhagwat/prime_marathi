import 'dart:convert';
import 'dart:io';
import 'package:prime_marathi/modles/response.dart';
import 'package:http/http.dart' as http;
import 'package:prime_marathi/networking/CustomException.dart';


class ApiProvider {


  final String _baseUrl = "http://marathi.primemedia.tv/app/apitest.php?";

  Future<dynamic> get(String url) async {
    var responseJson;

    try {
      final response = await http.get(_baseUrl + url);
      responseJson = _response(response);
    } on SocketException{
      throw FetchDataException('No Internet connection');

    }
    return responseJson;

  }


  Future<dynamic> post(String url) async {
    var responseJson;

    try{
      final response = await http.post(_baseUrl + url);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');

    }
    return responseJson;
  }




  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:

      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:

      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }




}