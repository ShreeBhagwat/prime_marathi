import 'package:flutter/material.dart';

const ksendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kmessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type Your Message Here...',
  border: InputBorder.none,
);

const kmessageContainerDecoratoion = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.redAccent, width: 2.0),
  ),
);

const kTextFiledFieldDecoration = InputDecoration(
//  hintStyle: TextStyle(color: Colors.grey),
  hintText: 'Enter a value',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.grey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.redAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

final kTextFormDecoration = BoxDecoration(
  border: Border.all(color: Colors.grey, width: 1.0, style: BorderStyle.solid),
);

const kfeedTextContainerDecoration = InputDecoration(
//  hintStyle: TextStyle(color: Colors.grey),
  hintText: 'Enter a value',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.grey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.redAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

ShapeBorder kBackButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
  ),
);

Widget kBackBtn = Icon(
  Icons.arrow_back_ios,
  // color: Colors.black54,
);



const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.grey,
);

const kTitleHeadingTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.redAccent,

);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kTeacherHeadingStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const kTeachersBranchStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w500,
  color: Colors.grey,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

const Kbranch = '''
[
    
        "Wadgaon Sheri","Hadapsar", "Fursungi", "Rahatni", "Kesnand"
    
]
    ''';


final String _baseUrl = "http://marathi.primemedia.tv/app/apitest.php?";
final String _baseUrl_2 = "http://marathi.primemedia.tv/app/api_ios.php?";
final String extention = "method_name=get_home_news2&page=";
final String base_image_url = "https://marathi.primemedia.tv/app/";


