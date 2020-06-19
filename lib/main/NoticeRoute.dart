import 'package:flutter/material.dart';

class NoticeRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('通知'),
        ),
        body: null,
      ),
      theme: ThemeData.light(),
    );
  }

}