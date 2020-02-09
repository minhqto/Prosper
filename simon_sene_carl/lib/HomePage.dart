import 'package:flutter/material.dart';
import 'package:simon_sene_carl/themeColor.dart';
import 'package:simon_sene_carl/widgets/drawer.dart';

class HomePage extends StatelessWidget {
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
        title: Text("Prosper",
            style:
                TextStyle(fontFamily: "MonarchDisplay", color: Colors.black)),
      ),
      backgroundColor: getTheme(),
      drawer: MyDrawer(
        title: "Drawer",
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello Jessica",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    "Continue your learning today with a new finanacial concept",
                    style: TextStyle(fontSize: 24),
                  ),
                  Center(
                    child: Container(
                      child: Image(image: AssetImage('img/landing-vector.png')),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment(0.5, 0.3),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
