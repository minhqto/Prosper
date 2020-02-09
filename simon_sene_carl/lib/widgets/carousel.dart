import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyCarousel> {
  var items = [
    {"topic": "Trading Stocks", "progress": "6/10"},
    {"topic": "TFSA", "progress": "9/10"},
    {"topic": "Real Estate", "progress": "7/10"},
    {"topic": "Mutual Funds", "progress": "5/10"},
    {"topic": "RRSP", "progress": "3/10"},
    {"topic": "Trading Stocks", "progress": "2/10"},
    {"topic": "Bonds", "progress": "10/10"},
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 300.0,
      items: items.map((item) {
        return Builder(
          builder: (BuildContext context) {
            var size = MediaQuery.of(context).size;
            return Container(
                height: 300,
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[50])),
                child: ListView(
                  children: <Widget>[
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      padding: EdgeInsets.all(20),
                      height: size.height * 0.13,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("TOPIC"),
                          Text(
                            item["topic"],
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            padding: EdgeInsets.all(20),
                            height: size.height * 0.1,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Progress",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(item["progress"])
                                ]),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            padding: EdgeInsets.all(20),
                            height: size.height * 0.1,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Upcoming",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("Choose Concept")
                                ]),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            padding: EdgeInsets.all(20),
                            height: size.height * 0.1,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Learn",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("Review all")
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
