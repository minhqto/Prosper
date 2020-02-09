import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'themeColor.dart';
import 'package:flutter/material.dart';
import 'chooseConcept.dart';
import "./widgets/drawer.dart";
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import "package:flappy_search_bar/flappy_search_bar.dart";
import 'package:simon_sene_carl/ThirdScreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Summary.dart';
class SetQuantity extends StatelessWidget {
  final String stock_name;
  double price = 114.5;
  int quantity;
  Future<MarketValue> value;

//  @override
//  void initState() {
//    value = fetchMarketValue();
//  }

// fetch market value for a stock
  Future<MarketValue> fetchMarketValue() async {
    var queryParameters = {
      'symbol': this.stock_name.toUpperCase(),
    };
    var uri =
    Uri.https('https://apidojo-yahoo-finance-v1.p.rapidapi.com/', 'stock/v2/get-profile', queryParameters);
    Map<String, String>  headers() => {
      "x-rapidapi-host": "apidojo-yahoo-finance-v1.p.rapidapi.com",
    "x-rapidapi-key": "f381504b93msh9e206b6040ffac3p102b14jsn2cc69b0df05d"
    };
    var response = await http.get(uri, headers: headers());
    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return MarketValue.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }

  SetQuantity({@required this.stock_name});
//  String date = new DateFormat.yMd().add_jm().format(new DateTime.now();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: new AppBar(
        elevation: 0,
        backgroundColor: getTheme(),
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text("Prosper", style: TextStyle(fontFamily: "MonarchDisplay", color: Colors.black))
        ),
    backgroundColor: getTheme(),
    drawer: MyDrawer(
    title: "Drawer",
    ),
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
                    child: Text("Set Quantity of Share",
                        style: TextStyle(
                          fontFamily: "Medium",
                          fontSize: 26,
                        )),
                  ),
                  Container(
                    alignment: Alignment(-1, 0),
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Text("Select the amount of share you want to purchase",
                        style: TextStyle(
                          fontFamily: "Regular",
                          fontSize: 19,
                          color: Colors.grey,
                        )),
                  ),
                  Container(
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                    padding: EdgeInsets.all(20),
                    alignment: Alignment(-1, 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                                child: Text("Your Account",
                                          style: TextStyle(
                                          fontFamily: "Regular",
                                          fontSize: 19,
                                          )),
                                ),
                                Center(
                                    child: Text("12,000.0",
                                            style: TextStyle(
                                            fontFamily: "Regular",
                                            fontSize: 19,
                                            ))
                                    )


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                                Text("Symbol",
                                    style: TextStyle(
                                      fontFamily: "Regular",
                                      fontSize: 19,
                                    )),


                                Text("${this.stock_name}",
                                    style: TextStyle(
                                      fontFamily: "Regular",
                                      fontSize: 19,
                                    ))
                          ],
                        ),
                      ],
                    )
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Market Value",
                                style: TextStyle(
                                  fontFamily: "Regular",
                                  fontSize: 19,
                                )),
                            Text('As of 02/09/2020 10:24 AM',
                                style: TextStyle(
                                  fontFamily: "Regular",
                                  fontSize: 19,
                                )),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                          Text('${price.toString()}',
                              style: TextStyle(
                                fontFamily: "Regular",
                                fontSize: 19,
                              ))],
                    ),
                ],
              ),
            ),
                  Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment(-1, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Text("Select Quantity",
                                    style: TextStyle(
                                      fontFamily: "Regular",
                                      fontSize: 19,
                                    )),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                          TextField(
                            onChanged: (text) {
                              this.quantity = (int)text.toString();
                            },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter Quantity',

                                ),
                        )

                            ],
                          ),
                        ],
                      )
                  ),
                  Container(

                      alignment: Alignment(0.9, 0.8),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MySummary(ticker: this.stock_name, marketVal: this.value, quantity: this.quantity )),
                            );
                          },
                          child: Text("Next",
                              style: TextStyle(fontSize: 22, fontFamily: "Medium"))))
          ],
        )),

])));

}
}


class MarketValue {
  final double value;

  MarketValue({this.value});

  double get price{
    return this.value;
  }
  factory MarketValue.fromJson(Map<String, dynamic> json) {
    return MarketValue(
      value: json['price']['regularMarketPrice']['raw'],
    );
  }
}