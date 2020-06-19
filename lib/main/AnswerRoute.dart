import 'package:flutter/material.dart';

class AnswerRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AnsWerRouteState();
  }

}

class AnsWerRouteState extends State<AnswerRoute> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData.light(),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('回答'),
        ),
        body: null,
      ),
    );
  }
}