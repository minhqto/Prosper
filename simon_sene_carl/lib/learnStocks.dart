import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'themeColor.dart';
import 'package:flutter/material.dart';

class LearnStocks extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: new AppBar(
        elevation: 0,
        backgroundColor: getTheme(),
      ),

      backgroundColor: getTheme(),
      drawer: Drawer(),
      body: Container(
        padding:  const EdgeInsets.only(left:50.0, top: 40.0),
        child: getTitle()

//        child: Column(
//          children: <Widget>[
//            Row(
//              children: <Widget>[
//                getTitle(),
//
//
//            ],
//            )
//          ],
//        )
      )

    );
  }
}