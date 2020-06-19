import 'package:flutter/material.dart';

class SearchRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SearchRouteState();
  }

}

class SearchRouteState extends State<SearchRoute> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData.light(),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('search'),
        ),
        body: null,
      ),
    );
  }
}