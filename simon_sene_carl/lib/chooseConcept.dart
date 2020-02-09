import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'themeColor.dart';
import 'buyingStock.dart';

class ChooseConcept extends StatefulWidget {
  final choice;
  ChooseConcept({this.choice});
  @override
  _ConceptState createState() => new _ConceptState();
}

class _ConceptState extends State<ChooseConcept> {

  List<String> easyConcepts = ["Buying Stocks", "Selling Stocks", "Dividends"];
  List<String> mediumConcepts = ["Limits", "Stops", "Stop Limits"];
  List<String> hardConcepts = ["Put Options", "Short Selling"];
  List<String> selectedConcepts = [];
  bool selected = false;

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
            GestureDetector(
              onTap: (){
                  setState(() {
                    selected = true;
                  });
                  },
              onTapCancel: (){
                setState(() {
                  selected = false;
                });
              },
                child: AnimatedContainer(
                  padding: EdgeInsets.only(top: 400),
                  duration: Duration(milliseconds: 500),
                  width: size.width * 0.8,
                  height: selected ? 400 : 200,
                  color: selected ? Colors.pinkAccent : getTheme(),
                  child: Text("tkjhhkhhjhest",
                      style:
                      TextStyle(fontFamily: "Regular", fontSize: 67, color: Colors.black))),
            ),
            Column(
              children: <Widget>[
                if (widget.choice.toString() == "Beginner")
                for (String choice in easyConcepts)
                  Container(
                      padding: EdgeInsets.only(top: 40),
                      width: size.width * 0.8,
                      child: OutlineButton(
                        onPressed: () {
                          setState(() {
                            selected != selected;
                          });
                        },
                          child: Text(choice,
                            style:
                        TextStyle(fontFamily: "Regular", fontSize: 22))),
                      ),

                if(widget.choice.toString() == "Intermediate")
                  for (var choice in mediumConcepts)
                    Container(
                        padding: EdgeInsets.only(top: 40),
                        width: size.width * 0.8,
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text(choice,
                              style:
                              TextStyle(fontFamily: "Regular", fontSize: 22)),
                        )),
                if(widget.choice.toString() == "Advanced")
                  for (var choice in hardConcepts)
                    Container(
                        padding: EdgeInsets.only(top: 40),
                        width: size.width * 0.8,
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text(choice,
                              style:
                              TextStyle(fontFamily: "Regular", fontSize: 22)),
                        )),
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
