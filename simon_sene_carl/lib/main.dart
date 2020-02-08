import 'package:flutter/material.dart';
import 'test.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';


void main()
{
  runApp(MyApp());
}

//MyApp is the root app
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new FirstScreen()
    );
  }
}

class FirstScreen extends StatelessWidget{
  final Color scaffoldBackgroundColor = const Color(0xF5F6F0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: const Color.fromRGBO(245,246, 240, 1.0),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Align(
          alignment: Alignment(0.0,-0.5),
          child: Text(
        "A financial application that aims to educate you on topics of finance in through an interactive practice.",
        style:
          TextStyle(
            fontFamily: "MonarchDisplay",
            fontSize: 28,
          ),)
      )
      )
    );
  }
}