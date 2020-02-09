import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import "package:flappy_search_bar/flappy_search_bar.dart";
import 'package:simon_sene_carl/ThirdScreen.dart';
import "../Post.dart";

class MySearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.pink,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                );
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
    await Future.delayed(Duration(seconds: 2));
    return List.generate(1, (int index) {
      return Post(
        "$search",
        "Description :$search $index",
      );
    });
  }
}
