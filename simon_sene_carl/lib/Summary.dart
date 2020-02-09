// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import "themeColor.dart";

// class Summary extends StatefulWidget{
//   @override
//   _Summary createState() => new _Summary();
// }

// class _Summary extends State<Summary>{

//   Widget _buildBody(BuildContext context){
//     return StreamBuilder<QuerySnapshot>(
//       stream: Firestore.instance.collection('stock').snapshots(),
//       builder: (context, snapshot){
//         if(!snapshot.hasData) return LinearProgressIndicator();
//         // return _buildList(context, snapshot.data.documents);
//       },
//     )
//   }
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return new Scaffold(

//     );
//   }
// }
