import 'package:flutter/material.dart';
import 'package:simon_sene_carl/wall.dart';
import '../ThirdScreen.dart';
import "../themeColor.dart";

import "../HomePage.dart";

class MyDrawer extends StatelessWidget {
  final String title;

  MyDrawer({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.

      child: ListView(
        // Important: Remove any padding from the ListView.

        children: <Widget>[
          Container(
            height: 100,
            child: DrawerHeader(
              child: Row(children: <Widget>[
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                Text(
                  ' Jessica',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ]),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    //                   <--- left side
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                color: getDarkest(),
              ),
            ),
          ),
          Container(
              color: getDarkest(),
              height: size.height,
              child: Column(
                children: <Widget>[
                  ListTile(
                      title: Text('Home',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      }),
                  ListTile(
                    title: Text('Financial News',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WallScreen(),
                          ));
                    },
                  ),
                  ListTile(
                    title: Text('Settings',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
