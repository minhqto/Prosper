import 'package:flutter/material.dart';
import 'test.dart';

void main(){
  //MaterialApp() is a widget that is like a wrapper for the rest of the widgets in our app
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Hello Wrldsss!"),
        titleSpacing: 2.0,
        centerTitle: true,
      ),
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Text("My name is Jeff",
        style: TextStyle(
          fontSize: 30,
          fontFamily: 'MonarchDisplay'
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, //anonymous function
        child: Center(
          child: Text("lick me!"),
        ),
    ),
    ),


  ));
}
