import 'dart:async';

import 'package:prime_marathi/modles/ALLINONENEWS.dart';
import 'package:prime_marathi/networking/Response.dart';
import 'package:prime_marathi/repository/AllInOneNewsRepository.dart';

class ALLINONENEWS_BLOC{


  AllInOneNewsRepository _allInOneNewsRepository;
  StreamController _allInOneNewsDataController;

  StreamSink<Response<ALLINONENEWS>> get allInOneNewsDataSink =>
      _allInOneNewsDataController.sink;


  Stream<Response<ALLINONENEWS>> get AllInOnesDataStream => _allInOneNewsDataController.stream;


  AllInOneNewsloc(String page_number){
    _allInOneNewsDataController = StreamController<Response<ALLINONENEWS>>();
    _allInOneNewsRepository = AllInOneNewsRepository();
    fetchHomeNews(page_number);
  }

  fetchHomeNews(String page_number) async {
    allInOneNewsDataSink.add(Response.loading("Getting News"));
    try{
      ALLINONENEWS allInOneNewsHome = await _allInOneNewsRepository.get_home_news("", page_number, "");
      allInOneNewsDataSink.add(Response.completed(allInOneNewsHome));
    } catch (e) {
      allInOneNewsDataSink.addError(Response.error(e.toString()));
    }

  }

  dispose(){
    _allInOneNewsDataController?.close();
  }

  

}