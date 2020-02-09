import 'package:flutter/material.dart';
import 'selectTopic.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

import "FirstScreen.dart";
import 'wall.dart';

void main() {
  runApp(MyApp());
}

//MyApp is the root app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new FirstScreen()
    );
  }
}
