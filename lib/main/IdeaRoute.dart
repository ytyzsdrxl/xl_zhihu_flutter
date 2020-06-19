import 'package:flutter/material.dart';

class IdeaRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('想法'),
        ),
        body: null,
      ),
      theme: ThemeData.light(),
    );
  }

}