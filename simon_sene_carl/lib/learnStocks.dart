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
            child: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0),
              child: Text(
                  "Looks like you are interested in learning about ${topic} at the ${level} level.",
                  style: TextStyle(fontFamily: "Medium", fontSize: 26))),
          Center(
              child: Container(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image(
                      image:
                          AssetImage('img/selection-vector_Artboard_6.png')))),
          Container(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Text(
                  "We have created a personalized guide to help you with that.",
                  style: TextStyle(color: Colors.grey, fontFamily: "Regular"))),
          Center(
              child: Container(
                  width: size.width * 0.8,
                  child: OutlineButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ChooseConcept(choice: level)));
                    },
                    child: Text("Start Now",
                        style: TextStyle(fontFamily: "Regular")),
                  ))),
          Center(
              child: Container(
                  width: size.width * 0.8,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Go Back",
                        style: TextStyle(fontFamily: "Regular")),
                  ))),
          Container(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0),
              child: Text(
                  "Looks like you are interested in learning about ${topic} at a ${level} level.",
                  style: TextStyle(fontFamily: "Medium", fontSize: 26))),
          Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                  "We have created a personalized guide to help you with that.",
                  style: TextStyle(color: Colors.grey, fontFamily: "Regular"))),
          Center(
              child: Container(
                  width: size.width * 0.8,
                  child: OutlineButton(
                    onPressed: () {},
                    child: Text("Start Now"),
                  )))
        ])));
  }
}


