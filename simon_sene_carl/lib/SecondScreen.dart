import 'package:flutter/material.dart';
import 'package:simon_sene_carl/ThirdScreen.dart';
import "package:flappy_search_bar/flappy_search_bar.dart";

class SecondScreen extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Second Screen'),
  //     ),
  //     body: Center(
  //       child: RaisedButton(
  //         child: Text('Go to the next screen'),
  //         onPressed: () {
  //           // Navigate to second route when tapped.
  //           Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => ThirdScreen()),
  //           );
  //         },
  //       ),
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 240, 1.0),
      body: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(left: 20, right: 20, top: 48),
          child: Column(
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
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: SearchBar(),
              // ),
              RaisedButton(
                child: Text('Go to the next screen'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()),
                  );
                },
              ),
              RaisedButton(
                child: Text('Go back'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.pop(context);
                },
              ),
            ],
          )),
    );
  }
}
