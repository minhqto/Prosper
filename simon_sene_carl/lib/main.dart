import 'package:flutter/material.dart';
import 'selectTopic.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';


void main()
{
  runApp(MyApp());
}

//MyApp is the root app
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new FirstScreen()
    );
  }
}

class FirstScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.8;
    // TODO: implement build
    return new Scaffold(
      backgroundColor: const Color.fromRGBO(245,246, 240, 1.0),
      body: Container(
          //padding: EdgeInsets.all(20.0),
            child: Stack(
                children: <Widget>[
                  Center(
                    child:
                        Container(
                        child:
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child:Text(
                            "Prosper",
                            style:
                            TextStyle(
                              fontFamily: "MonarchDisplay",
                              fontSize: 24,
                            )
                          ),

                        ),
                          alignment: Alignment(-1.0, -0.7),
                        )
                        ),
                  Center(
                    child: Container(
                      child:Padding(
                        padding: const EdgeInsets.all(20.0),
                        child:
                          Text(
                            "Prosper is a financial literacy app that aims to educate you on topics of finance in through an interactive experience.",
                            style:
                          TextStyle(
                            fontFamily: "BoldBold",
                            fontSize: 22,
                          ),
                        ),
                    ),
                    alignment: Alignment(-0.9,-0.5),

                  )),
                  Center(
                    child: Container(

                         child: Image(image: AssetImage('img/landing-vector.png')),
                          width: MediaQuery.of(context).size.width,
                          //height: 100,
                          alignment: Alignment(0.5,0.3),
                        ),


                    )

                    ]
                ),
          ),
    );
  }
}