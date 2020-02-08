import 'package:flutter/material.dart';
//import 'package:simon_sene_carl/learnStocks.dart';
import "package:flappy_search_bar/flappy_search_bar.dart";
import 'package:simon_sene_carl/learnStocks.dart';
import 'themeColor.dart';
class ThirdScreen extends StatelessWidget {
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
    List<String> knowledgeBase = ["Beginner", "Intermediate", "Advanced"];

    bool ifBeginner(String level)
    {
      return level == "Beginner" ? true : false;
    }

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
                child: Column(

                  children: <Widget>[
                    Container(
                      alignment: Alignment(-1, 0),
                      padding: const EdgeInsets.fromLTRB(0,20,0,20),
                      child: Text("Get Started",
                          style: TextStyle(
                            fontFamily: "Regular",
                            fontSize: 19,
                            color: Colors.grey,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0,0,0,100),
                      child: Text("How would you rate your knowledge on this topic?",
                          style: TextStyle(
                              fontFamily: "Medium",
                              fontSize: 30
                          )),
                    ),

                    Column(
                      //stack of containers
                      children: <Widget>[

                        for(var level in knowledgeBase)
                          Container(
                            width: size.width,
                            height: size.height * 0.08,
                            padding: const EdgeInsets.all(10),
                            child: OutlineButton(
                                onPressed: () { ifBeginner(level.toString()) ?
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LearnStocks())
                                  ) : AlertDialog(
                                  title: Text("hi")
                                );},
                                child: Text(level.toString(),
                                style:
                                TextStyle(
                                  fontFamily: "Regular"
                                )))

                          )
                      ],
                    )

                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: SearchBar(),
              // ),
//              RaisedButton(
//                child: Text('Go to the next screen'),
//                onPressed: () {
//                  // Navigate to second route when tapped.
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => FourthScreen()),
//                  );
//                },
//              ),

            ],
          )),
    );
  }
}
