import 'package:flutter/material.dart';
import 'test.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


void main(){
  //MaterialApp() is a widget that is like a wrapper for the rest of the widgets in our app
  runApp(MaterialApp(
    home: GHFlutter()

  ));
}


class GHFlutter extends StatefulWidget{
  @override
  createState() =>GHFlutterState();
}

class GHFlutterState extends State<GHFlutter>{
  var _members = []; //empty array
  final _biggerfont = const TextStyle(fontSize: 18);

  _loadData() async {
    String dataURL = "https://api.github.com/orgs/raywenderlich/members";
    http.Response response = await http.get(dataURL);
    setState(() {
      _members = json.decode(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarOpacity: 0.5,
        title: Text(Strings.appTitle),

      )
    );
  }
}