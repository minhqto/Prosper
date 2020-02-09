import 'package:flutter/material.dart';
import 'package:simon_sene_carl/SecondScreen.dart';
import 'themeColor.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.8;
    // TODO: implement build
    return new Scaffold(
        backgroundColor: getTheme(),
        body: Container(
          //padding: EdgeInsets.all(20.0),
          child: Stack(children: <Widget>[
            getTitle(),

            Center(
                child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Prosper is a financial literacy app that aims to educate you on topics of finance in through an interactive experience.",
                  style: TextStyle(
                    fontFamily: "Medium",
                    fontSize: 20,
                  ),
                ),
              ),
              alignment: Alignment(-0.9, -0.45),
            )),
            Center(
              child: Container(
                child: Image(image: AssetImage('img/landing-vector.png')),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment(0.5, 0.3),
              ),
            ),
            Container(
                alignment: Alignment(0.9, 0.9),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondScreen()),
                      );
                    },
                    child: Text("Next",
                        style: TextStyle(fontSize: 22, fontFamily: "Medium"))))
          ]),
        ));
  }
}
