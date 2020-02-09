import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import "package:flappy_search_bar/flappy_search_bar.dart";
import 'package:simon_sene_carl/HomePage.dart';
import 'package:simon_sene_carl/SearchStock.dart';
import 'package:simon_sene_carl/ThirdScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "../Post.dart";

class MySearchBar extends StatelessWidget {
  bool isSearchStock = true;
  String result;

  MySearchBar({this.isSearchStock});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: SearchBar<Post>(
        hintText: "Search",
        onSearch: search,
        crossAxisCount: 1,
        emptyWidget: Center(
          child: Text("Empty"),
        ),
        onItemFound: (Post post, int index) {
          return Container(
            height: 50,
            margin: EdgeInsets.all(10),
            child: OutlineButton(
              child: Text(post.title, style: TextStyle(color: Colors.black)),
              borderSide: BorderSide(
                color: Colors.grey,
                style: BorderStyle.solid,
                width: 1,
              ),
              onPressed: () {
                isSearchStock
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage()), //parse in result
                      )
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThirdScreen(topic: result)),
                      );
                ;
              },
            ),
          );
        },
        searchBarStyle: SearchBarStyle(
          padding: EdgeInsets.all(10),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 1));
    return List.generate(1, (int index) {
      result = search.toUpperCase();
      return Post(
        "${result}",
        "Description :$search $index",
      );
    });
  }

  // Future<List<Post>> searchStock(String search) async {
  //   var num;
  //   Stream<QuerySnapshot> stocks = Firestore.instance
  //       .collection("stock")
  //       .getDocuments()
  //       .then((QuerySnapshot snap) {
  //     num = snap.documents.length;
  //   }) as Stream<QuerySnapshot>;

  //   return List.generate(num, (int index) {
  //     result = search;
  //     return Post(
  //       "$search",
  //       "Description :$search $index",
  //     );
  //   });
  // }
}
