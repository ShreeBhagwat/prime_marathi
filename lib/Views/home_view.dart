//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:prime_marathi/Helper/silver_app_delegate.dart';
import 'package:prime_marathi/Helper/tab_view_list.dart';
import 'package:prime_marathi/Views/home_view_2.dart';
import 'package:prime_marathi/components/trial.dart';

class HomeView extends StatefulWidget {
  static String homeViewRoute = "home_view";
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin {
  final navigatorKey = GlobalKey<NavigatorState>();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,

      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ondemand_video),
          title: Container(),

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star_border),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chrome_reader_mode),
          title: Container(),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    ),

    );
  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[

    HomeView2(),
//    NewsScreen(),
//    NewsScreen(),
    Text(
      'Index 2: Star',
      style: optionStyle,
    ),
    Text(
      'Index 2: Marked',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
