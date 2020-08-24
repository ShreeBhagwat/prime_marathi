import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prime_marathi/Views/detail_news_view.dart';
import 'package:prime_marathi/Views/home_view.dart';
import 'package:prime_marathi/Views/login_view.dart';
import 'package:prime_marathi/Views/welcome_view.dart';

void main()async{
//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//    statusBarColor: Colors.red,
//    statusBarBrightness: Brightness.dark,
//  ));
  runApp(Prime_Marathi());
}


class Prime_Marathi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
//      theme: ThemeData(
//        appBarTheme: AppBarTheme(
//          color: Color(0x44000000),
//        ),
//      ),

      initialRoute: WelcomeView.welcomeViewRoute,
      routes: {
        WelcomeView.welcomeViewRoute: (context) => WelcomeView(),
        LoginView.loginViewRoute: (context) => LoginView(),
        HomeView.homeViewRoute: (context) => HomeView(),
        DetailNewsView.detailNewsView: (context) => DetailNewsView(null, null),
      },
    );
  }


}
