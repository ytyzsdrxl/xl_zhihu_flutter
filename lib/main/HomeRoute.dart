import 'package:flutter/material.dart';
import 'package:xl_zhihu_flutter/common/ColorRoute.dart';
import 'package:xl_zhihu_flutter/main/AskRoute.dart';
import 'package:xl_zhihu_flutter/main/FollowRoute.dart';
import 'package:xl_zhihu_flutter/main/HotRoute.dart';
import 'package:xl_zhihu_flutter/main/RecommendRoute.dart';

import 'SearchRoute.dart';

class HomeRoute extends StatefulWidget {
  createState() => new HomeRouteState();
}

class HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: searchBar(),
            bottom: new TabBar(
                tabs: [Tab(text: '关注'), Tab(text: '推荐'), Tab(text: '热榜')]),
          ),
          body: new TabBarView(children: [
            new FollowRoute(),
            new RecommendRoute(),
            new HotRoute()
          ]),
        ));
  }

  Widget searchBar() {
    return new Container(
        child: Row(
          children: <Widget>[
            new Expanded(
                child: new FlatButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  return new SearchRoute();
                }));
              },
              icon: Icon(
                Icons.search,
                color: ColorRoute.fontColor,
                size: 16,
              ),
              label: new Text(
                "畅你所言",
                style: new TextStyle(color: ColorRoute.fontColor),
              ),
            )),
            new Container(
              decoration: new BoxDecoration(
                  //装饰器，类似于Android中的shape
                  border: new BorderDirectional(
                      start: new BorderSide(
                          color: ColorRoute.fontColor, width: 1.0))),
              height: 14.0,
              width: 1.0,
            ),
            new Container(
                child: new FlatButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  return new AskRoute();
                }));
              },
              icon: new Icon(Icons.border_color,
                  color: ColorRoute.fontColor, size: 14.0),
              label: new Text(
                "提问",
                style: new TextStyle(color: ColorRoute.fontColor),
              ),
            )),
          ],
        ),
        decoration: new BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
          color: ColorRoute.searchBackgroundColor,
        ));
  }
}
