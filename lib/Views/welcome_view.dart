import 'package:flutter/material.dart';
import 'package:prime_marathi/Views/login_view.dart';
import 'package:prime_marathi/components/AllButton.dart';

class WelcomeView extends StatefulWidget {

  static String welcomeViewRoute = "welcome_view";
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
              "Welcome View"
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: customRoundButton(
              title: 'Go TO login View',
              textColor: Colors.white,
              color: Colors.redAccent,
              width: MediaQuery.of(context).size.width - 30,
              onPressed: (){
                Navigator.of(context).pushNamed(LoginView.loginViewRoute);
              },
            ),
          ),



        ],
      ),

    );
  }
}
