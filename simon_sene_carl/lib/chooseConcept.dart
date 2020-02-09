import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'themeColor.dart';

class ChooseConcept extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: new AppBar(
          elevation: 0,
          backgroundColor: getTheme(),
          iconTheme: new IconThemeData(color: Colors.black),
          title: Text(
              "Prosper",
              style: TextStyle(
                  fontFamily: "MonarchDisplay",
                  color: Colors.black
              )
          ),
        ),
        drawer: Drawer(),
        body: Column(
          
        )
    );
  }
}