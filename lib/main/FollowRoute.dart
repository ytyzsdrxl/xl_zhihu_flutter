import 'package:flutter/material.dart';
import 'package:xl_zhihu_flutter/bean/ArticleRoute.dart';
import 'package:xl_zhihu_flutter/common/ColorRoute.dart';
import 'package:xl_zhihu_flutter/main/ReplyRoute.dart';

class FollowRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FollowRouteState();
  }
}

class FollowRouteState extends State<FollowRoute> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SingleChildScrollView(
      child: new Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: new Column(
          children: <Widget>[
            wordsCard(articleList[0]),
            wordsCard(articleList[1]),
            adWidget(),
            wordsCard(articleList[2]),
          ],
        ),
      ),
    );
  }

  Widget wordsCard(ArticleRoute article) {
    Widget markWidget;
    if (article.imgUrl == null) {
      markWidget = new Text(article.mark,
          style: new TextStyle(height: 1.3, color: ColorRoute.fontColor));
    } else {
      markWidget = new Row(
        children: <Widget>[
          new Expanded(
            flex: 2,
            child: new Container(
              child: new Text(article.mark,
                  style:
                      new TextStyle(height: 1.3, color: ColorRoute.fontColor)),
            ),
          ),
          new Expanded(
              flex: 1,
              child: new AspectRatio(
                  aspectRatio: 3.0 / 2.0,
                  child: new Container(
                    foregroundDecoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new NetworkImage(article.imgUrl),
                          centerSlice:
                              new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                        ),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(6.0))),
                  ))),
        ],
      );
    }
    return new Container(
      color: ColorRoute.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: new FlatButton(
          onPressed: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return new ReplyRoute();
            }));
          },
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new CircleAvatar(
                        backgroundImage: new NetworkImage(article.headUrl),
                        radius: 11,
                      ),
                    ),
                    new Text(
                        "  " +
                            article.user +
                            " " +
                            article.action +
                            " · " +
                            article.time,
                        style: new TextStyle(color: ColorRoute.fontColor))
                  ],
                ),
                padding: const EdgeInsets.only(top: 10.0),
              ),
              new Container(
                  child: Text(article.title,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          height: 1.3,
                          color: ColorRoute.dark == true
                              ? Colors.white70
                              : Colors.black)),
                  margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.topLeft),
              new Container(
                  child: markWidget,
                  margin: new EdgeInsets.only(top: 6.0),
                  alignment: Alignment.topLeft),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text(
                            article.agreeNum.toString() +
                                " 赞同 · " +
                                article.commentNum.toString() +
                                "评论",
                            style: new TextStyle(color: ColorRoute.fontColor))),
                    new PopupMenuButton(
                      icon: new Icon(
                        Icons.linear_scale,
                        color: ColorRoute.fontColor,
                      ),
                      itemBuilder: (BuildContext buildContext) {
                        return <PopupMenuItem<String>>[
                          new PopupMenuItem<String>(
                              value: '选项一的值', child: new Text('屏蔽这个问题')),
                          new PopupMenuItem<String>(
                              value: '选项二的值', child: new Text('取消关注 learner')),
                          new PopupMenuItem<String>(
                              value: '选项三的值', child: new Text("举报"))
                        ];
                      },
                      onSelected: (String action) {
                        switch (action) {
                          case '选项一的值':
                            print('屏蔽这个问题');
                            break;
                          case '选项二的值':
                            print('取消关注learner');
                            break;
                          case '选项三的值':
                            print('举报');
                            break;
                        }
                      },
                      onCanceled: () {
                        print('取消');
                      },
                    )
                  ],
                ),
                padding: const EdgeInsets.only(),
              )
            ],
          )),
    );
  }

  Widget adWidget() {
    return new Container(
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      color: ColorRoute.cardBackgroundColor,
      child: new FlatButton(
          onPressed: null,
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new CircleAvatar(
                        backgroundImage: new NetworkImage(
                            'https://pic1.zhimg.com/50/v2-0c9de2012cc4c5e8b01657d96da35534_s.jpg'),
                        radius: 11,
                      ),
                    ),
                    new Text('  对啊网',
                        style: new TextStyle(color: ColorRoute.fontColor))
                  ],
                ),
                padding: const EdgeInsets.only(top: 10.0),
              ),
              new Container(
                margin: EdgeInsets.only(top: 6.0, bottom: 2.0),
                alignment: Alignment.topLeft,
                child: new Text("考过CPA，非名牌大学也能进名企",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        height: 1.3,
                        color: ColorRoute.dark == true
                            ? Colors.white70
                            : Colors.black)),
              ),
              new Container(
                margin: EdgeInsets.only(top: 5.0),
                child: new AspectRatio(
                  //设置宽高比
                  aspectRatio: 3.0 / 1.0,
                  child: new Container(
                    foregroundDecoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new NetworkImage(
                              'https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg'),
                          centerSlice:
                              new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),//类似于Android中的.9图片
                        ),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(6.0))),
                  ),
                ),
              ),
              new Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: new Text(
                      "还在羡慕别人的好工作？免费领取价值1980元的注册会计师课程，为自己充电！",
                      style: new TextStyle(height: 1.3, color: ColorRoute.fontColor)
                  ),
                  padding: const EdgeInsets.only(bottom: 8.0)
              ),

              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                        child: new Text("广告", style: new TextStyle(fontSize: 10.0, color: ColorRoute.fontColor)),
                        decoration: new BoxDecoration(
                          border: new Border.all(color: ColorRoute.fontColor),
                          borderRadius: new BorderRadius.all(const Radius.circular(2.0)),
                        ),
                        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 3.0, right: 3.0)
                    ),
                    new Expanded(
                        child: new Text("  查看详情", style: new TextStyle(color: ColorRoute.fontColor))
                    ),
                    new Icon(Icons.clear, color: ColorRoute.fontColor)
                  ],
                ),
                padding: const EdgeInsets.only(bottom: 10.0),
              )
            ],
          )),
    );
  }
}
