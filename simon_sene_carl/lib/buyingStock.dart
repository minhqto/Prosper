import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simon_sene_carl/wall.dart';
import "themeColor.dart";

class BuyingStocks extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: getTheme(),
      extendBodyBehindAppBar: true,
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: getTheme(),
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text("Prosper",
            style:
            TextStyle(fontFamily: "MonarchDisplay", color: Colors.black)),
      ),
      drawer: Drawer(),

    body: ListView(
      children: <Widget>[
        Container(
          padding: getSubHeaderPadding(),
          child: Text(
            "Today's Goal",
            style: TextStyle(
                fontFamily: "Regular", color: Colors.grey, fontSize: 16),
          ),
        ),
        Container(
          padding: getHeaderPadding(),
          child: Text(
            "What exactly is a stock?",
              style: TextStyle(fontFamily: "Medium", fontSize: 28)),

        ),
        Container(
          child: Image(image: AssetImage('img/content-vector-02.png'))
        ),
        Container(
          padding: getSubHeaderPadding(),
            child: Text("Simply put, stocks represent ownership of a company. Companies can choose to place their company on a public stock market, and allow the public to buy shares of their company, so anyone can own a part of that company."
        , style:
        TextStyle(
          fontFamily: "Regular", fontSize: 14
        )
      )),
        Container(

            alignment: Alignment(0.9, 0.8),
            child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WallScreen()),
                  );
                },
                child: Text("Next",
                    style: TextStyle(fontSize: 22, fontFamily: "Medium"))))
      ],
    ));
  }
}