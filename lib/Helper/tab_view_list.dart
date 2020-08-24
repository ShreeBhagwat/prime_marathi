import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabViewList extends StatefulWidget {
  final String title;
  TabViewList({this.title});
  @override
  _TabViewListState createState() => _TabViewListState();
}

class _TabViewListState extends State<TabViewList> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView.builder(
        primary: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: Icon(Icons.access_alarm),
            leading: Icon(Icons.accessibility_new),
            title: Text('${widget.title}'),
            subtitle: Text("Flutter Tutorial"),
          );
        },
      ),
    );
  }
}
