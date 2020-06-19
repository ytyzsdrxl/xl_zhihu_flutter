import 'package:flutter/material.dart';
import 'package:xl_zhihu_flutter/main/MainRoute.dart';

import 'package:flutter/rendering.dart';



void main() {
  debugPaintSizeEnabled = false; //2.第二步
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '知乎Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MainRoute(),
    );
  }
}
