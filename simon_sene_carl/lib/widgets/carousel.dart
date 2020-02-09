import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyCarousel> {
  var items = [
    {"topic": "Topic 1", "progress": "6/10"},
    {"topic": "Topic 2", "progress": "9/10"},
    {"topic": "Topic 3", "progress": "7/10"},
    {"topic": "Topic 4", "progress": "5/10"},
    {"topic": "Topic 5", "progress": "3/10"},
    {"topic": "Topic 6", "progress": "2/10"},
    {"topic": "Topic 7", "progress": "10/10"},
    {"topic": "Topic 8", "progress": "9/10"},
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
      height: 400.0,
      items: items.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: size.width * 0.7,
                height: size.height * 0.5,
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: ListView(
                  children: <Widget>[
                    Container(
                      color: Colors.pink,
                      height: size.height * 0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Title"),
                          Text(item["topic"]),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(children: <Widget>[
                              Text("Progress"),
                              Text(item["progress"])
                            ]),
                          ),
                          Container(
                            child: Row(children: <Widget>[
                              Text("Progress"),
                              Text("6/10")
                            ]),
                          ),
                          Container(
                            child: Row(children: <Widget>[
                              Text("Progress"),
                              Text("6/10")
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}
