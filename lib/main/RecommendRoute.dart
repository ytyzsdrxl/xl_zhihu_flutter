 import 'package:flutter/material.dart';
import 'package:xl_zhihu_flutter/bean/ArticleRoute.dart';
import 'package:xl_zhihu_flutter/common/ColorRoute.dart';

import 'ReplyRoute.dart';

class RecommendRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RecommendRouteState();
  }

 }

class RecommendRouteState extends State<RecommendRoute> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SingleChildScrollView(
      child: new Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: new Column(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
            ),
            commonCard(articleList[0]),
            commonCard(articleList[1]),
            commonCard(articleList[2])
          ],
        ),
      ),
    );
  }

  Widget commonCard(ArticleRoute article) {
    Widget markWidget;
    if (article.imgUrl == null) {
      markWidget = new Text(
          article.user + " :  " + article.mark,
          style: new TextStyle(height: 1.3, color: ColorRoute.fontColor)
      );
    } else {
      markWidget = new Row(
        children: <Widget>[
          new Expanded(
            flex: 2,
            child: new Container(
              child: new Text(
                  article.user + " :  " + article.mark,
                  style: new TextStyle(height: 1.3, color: ColorRoute.fontColor)
              ),
            ),
          ),
          new Expanded(
              flex: 1,
              child: new AspectRatio(
                  aspectRatio: 3.0 / 2.0,
                  child:new Container(
                    foregroundDecoration:new BoxDecoration(
                        image: new DecorationImage(
                          image: new NetworkImage(article.imgUrl),
                          centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                        ),
                        borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                    ),
                  )
              )
          ),
        ],
      );
    }
    return new Container(
        color: ColorRoute.cardBackgroundColor,
        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: new FlatButton(
          onPressed: (){
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) {
                  return new ReplyRoute();
                }
            ));
          },
          child: new Column(
            children: <Widget>[
              new Container(
                  child: new Text(
                      article.title,
                      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, height: 1.3, color: ColorRoute.dark == true? Colors.white70 : Colors.black)
                  ),
                  margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.topLeft
              ),
              new Container(
                  child: markWidget,
                  margin: new EdgeInsets.only(top: 6.0, bottom: 14.0),
                  alignment: Alignment.topLeft
              ),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text(article.agreeNum.toString() + " 赞同 · " + article.commentNum.toString() + "评论", style: new TextStyle(color: ColorRoute.fontColor))
                    ),
                    new Icon(Icons.linear_scale, color: ColorRoute.fontColor)
                  ],
                ),
                padding: const EdgeInsets.only(bottom: 10.0),
              )
            ],
          ),
        )
    );
  }
}