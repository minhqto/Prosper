import 'package:flutter/material.dart';
import 'package:simon_sene_carl/ThirdScreen.dart';
import 'package:simon_sene_carl/widgets/searchBar.dart';
import 'package:simon_sene_carl/ThirdScreen.dart';
//import "package:flappy_search_bar/flappy_search_bar.dart";
import 'themeColor.dart';

class SearchStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 240, 1.0),
      body: Container(
          width: size.width,
          padding: EdgeInsets.only(left: 20, right: 20, top: 48),
          child: ListView(
            children: <Widget>[
              Container(
                width: size.width,
                height: size.height * 0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Search for a stock?",
                        style: TextStyle(
                          fontFamily: "Regular",
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        )),
                    Text(
                        "Start by searching for the name of acompany that you want to buy shares of",
                        style: TextStyle(
                          fontFamily: "Regular",
                          fontSize: 19,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              Container(
                child: MySearchBar(isSearchStock: true),
              ),
            ],
          )),
    );
  }
}
