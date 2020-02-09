import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
//import 'package:simon_sene_carl/learnStocks.dart';
import "package:flappy_search_bar/flappy_search_bar.dart";
import 'package:simon_sene_carl/learnStocks.dart';
import 'themeColor.dart';

class ThirdScreen extends StatelessWidget {
  final topic;

  ThirdScreen({@required this.topic});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> knowledgeBase = ["Beginner", "Intermediate", "Advanced"];

    return Scaffold(
      backgroundColor: getTheme(),
      body: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(left: 20, right: 20, top: 48),
          child: Stack(
            children: <Widget>[
              Container(
                width: size.width,
                height: size.height,
                child: ListView(

                  children: <Widget>[
                    Container(
                      alignment: Alignment(-1, 0),
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text("Get Started",
                          style: TextStyle(
                            fontFamily: "Regular",
                            fontSize: 19,
                            color: Colors.grey,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
                      child: Text(
                          "How would you rate your knowledge on $topic?",
                          style: TextStyle(fontFamily: "Medium", fontSize: 30)),
                    ),
                    Column(
                      //stack of containers
                      children: <Widget>[
                        for (var level in knowledgeBase)
                          Container(
                              width: size.width,
                              height: size.height * 0.08,
                              padding: const EdgeInsets.all(10),
                              child: OutlineButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LearnStocks(
                                                    level: level.toString()))
                                    );
                                  },
                                  child: Text(level.toString(),
                                      style: TextStyle(fontFamily: "Regular"))))
                        ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
