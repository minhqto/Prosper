
import 'dart:ffi';
import 'package:simon_sene_carl/themeColor.dart';
import 'fullscreen_image.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'Summary.dart';

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
            child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.network(imgPath, fit: BoxFit.cover),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(snapshot[i].data['title'],
                              style: new TextStyle(
                                fontFamily: 'Medium',
                                fontSize: 16.0,
                              )
                          ),
                        ),
                      ]
                  ),
                )
            )

        );
      },
      staggeredTileBuilder: (i) =>
      new StaggeredTile.fit(2),
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: getTheme(),
        extendBodyBehindAppBar: false,
        appBar: new AppBar(
          elevation: 0,
          backgroundColor: getTheme(),
          iconTheme: new IconThemeData(color: Colors.black),
          title: Text("Prosper",
              style:
              TextStyle(fontFamily: "MonarchDisplay", color: Colors.black)),
        ),
        drawer: Drawer(),
      body: Column(
        children: <Widget>[
          Text("If you want to learn more...",
          style: TextStyle(
            fontFamily: "Medium",
            fontSize: 20
          )),
          Container(
              padding: EdgeInsets.only(top: 5, bottom: 10),
              child: Text("We have selected several articles for you if you are interested in exploring more about Trading Stocks",
              style: TextStyle(
                  fontFamily: "Regular",
                  fontSize: 12
              ))),
          SizedBox(
            height: 570,
            child: _buildBody(context)
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: OutlineButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Summary()));},
              child: Text("Practice Buying a Stock",
                  style: TextStyle(
                      fontFamily: "Regular",
                      fontSize: 16
                  )
              )
            )
          ),
          Container(
            child: FlatButton(
              onPressed: (){Navigator.pop(context);},
              child: Text("Go to Dashboard",
                  style: TextStyle(
                  fontFamily: "Regular",
                  fontSize: 14
              ))
            )
          )

        ],
      ),

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
                  title:Container(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 240.0,
                        maxWidth: 240.0,
                        minHeight: 30.0,
                        maxHeight: 100.0,
                      ),
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 18.0, fontFamily: "BoldBold",),
                      ),
                    ),
                  ),



//                  FittedBox(fit:BoxFit.fitWidth,
//                      child: Text(title, style: TextStyle(
//                          fontFamily: "Regular",
//                          fontSize: 15))
//                  ),
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
                            begin: Alignment(0.9,0.9),
                            end: Alignment(0.9, 0.0),
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
                      color: getTheme(),
                      padding: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      child: Text(this.content[index],
                          style: TextStyle(
                              fontFamily: "Regular",
                              fontSize: 14
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
