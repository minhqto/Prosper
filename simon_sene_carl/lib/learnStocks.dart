import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'themeColor.dart';
import 'package:flutter/material.dart';
import 'chooseConcept.dart';
import "./widgets/drawer.dart";

class LearnStocks extends StatelessWidget {
  final level;
  final topic;
  LearnStocks({@required this.level, @required this.topic});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: new AppBar(
          elevation: 0,
          backgroundColor: getTheme(),
          iconTheme: new IconThemeData(color: Colors.black),
          title: Text("Prosper",
              style:
                  TextStyle(fontFamily: "MonarchDisplay", color: Colors.black)),
        ),
        backgroundColor: getTheme(),
        drawer: MyDrawer(
          title: "Drawer",
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(left: 20.0, top: 40.0),
                child: Text(
                    "Looks like you are interested in learning about ${topic} at a ${level} level.",
                    style: TextStyle(fontFamily: "Medium", fontSize: 26))),
            Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                    "We have created a personalized guide to help you with that.",
                    style:
                        TextStyle(color: Colors.grey, fontFamily: "Regular"))),
            Center(
                child: Container(
                    width: size.width * 0.8,
                    child: OutlineButton(
                      onPressed: () {},
                      child: Text("Start Now"),
                    )))
          ],
        )));
  }
}
