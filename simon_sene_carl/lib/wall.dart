
import 'dart:ffi';

import 'package:simon_sene_carl/themeColor.dart';

import 'fullscreen_image.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const String testDevice = '';

class WallScreen extends StatefulWidget {

  @override
  _WallScreenState createState() => new _WallScreenState();
}

class _WallScreenState extends State<WallScreen> {

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('article').snapshots(),
      builder: (context, snapshot) {
//        print(snapshot.data.documents);
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.documents);
      },
    );
  }
  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return new StaggeredGridView.countBuilder(
      padding: const EdgeInsets.all(8.0),
      crossAxisCount: 4,
      itemCount: snapshot.length,
      itemBuilder: (context, i) {
        String imgPath =  snapshot[i].data['img_url'];
        return new Material(
          elevation: 8.0,
          borderRadius:
          new BorderRadius.all(new Radius.circular(8.0)),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) =>
                      new SingleArticle(imgPath, snapshot[i].data['title'],snapshot[i].data['content'] )));
            },
            child: Column(
                children: [
                  new Align(
                    alignment: Alignment.bottomCenter,
                    child: new Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(snapshot[i].data['title'])
                    ),
                  ),new FadeInImage(
                    image: new NetworkImage(imgPath),
                    fit: BoxFit.fitHeight ,
                    placeholder: new AssetImage("assets/m.jpeg"),
                  ),]
            )
          ),
        );
      },
      staggeredTileBuilder: (i) =>
      new StaggeredTile.count(2, i.isEven ? 2 : 3),
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: getTheme(),
        appBar: new AppBar(
          title: Center(
            child:new Text("Topic"),
          )
        ),
      body: _buildBody(context)
    );
  }
}


class SingleArticle extends StatelessWidget {
  String imgPath;
  String title;
  List<dynamic> content;
  SingleArticle(this.imgPath, this.title, this.content);

  final LinearGradient backgroundGradient = new LinearGradient(
      colors: [new Color(0x10000000), new Color(0x30000000)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getTheme(),
      body: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: getDarkest(),
                stretch: true,
                onStretchTrigger: () {
                  // Function callback for stretch
                  return;
                },
                expandedHeight: 300.0,
                flexibleSpace: FlexibleSpaceBar(
                  stretchModes: <StretchMode>[
                    StretchMode.zoomBackground,
                    StretchMode.blurBackground,
                    StretchMode.fadeTitle,
                  ],
                  centerTitle: false,
                  title: const Text('Title', style: TextStyle(
                      fontFamily: "Regular",
                      fontSize: 25
                  )),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        imgPath,
                        fit: BoxFit.cover,
                      ),
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0, 0.5),
                            end: Alignment(0.0, 0.0),
                            colors: <Color>[
                              Color.fromRGBO(61, 61, 61, 0.4),
                              Color.fromRGBO(61, 61, 61, 0.1)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                ///Use SliverChildListDelegate and provide a list
                ///of widgets if the count is limited
                ///
                ///Lazy building of list
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    /// To convert this infinite list to a list with "n" no of items,
                    /// uncomment the following line:
                    /// if (index > n) return null;
                    return Container(
                      padding: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      child: Text(this.content[index],
                          style: TextStyle(
                              fontFamily: "Regular",
                              fontSize: 20
                          )),
                    );
                  },
                  /// Set childCount to limit no.of items
                   childCount: this.content.length,
                ),
              )
            ],
          ),
      );
  }
}
