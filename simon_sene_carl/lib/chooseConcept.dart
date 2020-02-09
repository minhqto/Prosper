import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'themeColor.dart';
import 'buyingStock.dart';

class ChooseConcept extends StatefulWidget {
  //final choice;
 const ChooseConcept({Key key, choice}) : super(key:key);
  @override
  _ConceptState createState() => new _ConceptState();
}

class _ConceptState extends State<ChooseConcept> {

  List<String> easyConcepts = ["Buying Stocks", "Selling Stocks", "Dividends"];
  List<String> mediumConcepts = ["Limits", "Stops", "Stop Limits"];
  List<String> hardConcepts = ["Put Options", "Short Selling"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
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
                child: Text("Choose a Concept",
                    style: TextStyle(fontFamily: "Medium", fontSize: 28))),
            Column(
              children: <Widget>[
                // if (choice.toString() == "Beginner")
                for (var choice in easyConcepts)
                  Container(
                      padding: EdgeInsets.only(top: 40),
                      width: size.width * 0.8,
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(choice,
                            style:
                                TextStyle(fontFamily: "Regular", fontSize: 22)),
                      ))
              ],

            ),
            Container(
                padding: EdgeInsets.only(top: 200),
                alignment: Alignment(0.9, 0),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BuyingStock()),
                      );
                    },
                    child: Text("Next",
                        style: TextStyle(fontSize: 22, fontFamily: "Medium"))))
          ],
        ));
  }
}
