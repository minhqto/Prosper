import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:simon_sene_carl/HomePage.dart';
import 'package:simon_sene_carl/SecondScreen.dart';
import 'themeColor.dart';
import 'package:flutter/material.dart';
import 'chooseConcept.dart';
import "./widgets/drawer.dart";

class Congratulation extends StatelessWidget {
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
              padding: const EdgeInsets.only(left: 40.0, top: 20.0),
              child: Text(
                  "Congratulations, you have successfully bought a stock",
                  style: TextStyle(fontFamily: "Medium", fontSize: 26))),
          Center(
              child: Container(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image(image: AssetImage('img/Congrats.png')))),
          Container(
              padding: const EdgeInsets.only(left: 40, top: 20, bottom: 20),
              child: Text("That's awesome first step! What's next?",
                  style: TextStyle(color: Colors.grey, fontFamily: "Regular"))),
          Center(
              child: Container(
                  width: size.width * 0.8,
                  child: OutlineButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Go to Dashboard",
                        style: TextStyle(fontFamily: "Regular")),
                  ))),
          Center(
              child: Container(
                  width: size.width * 0.8,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()));
                    },
                    child: Text("Practice Again",
                        style: TextStyle(fontFamily: "Regular")),
                  ))),
        ])));
  }
}
