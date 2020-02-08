import 'package:flutter/material.dart';
import 'themeColor.dart';
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: getTheme(),
      body: Container(
        child: Stack(
          children: <Widget>[
            Text("hello world!")
          ]
        )
      ),
    );
  }
}
