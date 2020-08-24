import 'package:flutter/material.dart';
import 'package:prime_marathi/Views/home_view.dart';
import 'package:prime_marathi/Views/home_view_2.dart';
import 'package:prime_marathi/components/AllButton.dart';

class LoginView extends StatefulWidget {

  static String loginViewRoute = "login_view";
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Login View"
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: customRoundButton(
              title: 'Go TO Home View',
              textColor: Colors.white,
              color: Colors.redAccent,
              width: MediaQuery.of(context).size.width - 30,
              onPressed: (){
                Navigator.of(context).pushNamed(HomeView.homeViewRoute);
              },
            ),
          ),



        ],
      ),

    );
  }
}
