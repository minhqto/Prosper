import 'package:flutter/material.dart';
import 'package:simon_sene_carl/widgets/searchBar.dart';

class SecondScreen extends StatelessWidget {
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
                    Text("Get Started",
                        style: TextStyle(
                          fontFamily: "Maax",
                          fontSize: 19,
                          color: Colors.grey,
                        )),
                    Text("Which topic are you interested in?",
                        style: TextStyle(
                          fontFamily: "Maax",
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
              Container(
                child: MySearchBar(),
              ),
            ],
          )),
    );
  }
}
