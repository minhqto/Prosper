import 'package:flutter/material.dart';
import 'selectTopic.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

import "FirstScreen.dart";

void main() {
  runApp(MyApp());
}

//MyApp is the root app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new FirstScreen());
  }
}
