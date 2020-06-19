import 'package:flutter/material.dart';

class MarketRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  new Scaffold(
        appBar: new AppBar(
          title: new Text('市场'),
        ),
        body: null,
      ),
      theme: ThemeData.light(),
    );
  }

}