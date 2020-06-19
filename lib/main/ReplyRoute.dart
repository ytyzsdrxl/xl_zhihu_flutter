import 'package:flutter/material.dart';
import 'package:xl_zhihu_flutter/common/ColorRoute.dart';
import 'package:xl_zhihu_flutter/main/AnswerRoute.dart';

class ReplyRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ReplyRouteState();
  }
  
}

class ReplyRouteState extends State<ReplyRoute> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData.light(),
      home: new Scaffold(
        appBar: new AppBar(
          title: searchBar(),
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
                new Container(
                  child: new FlatButton(onPressed: (){Navigator.of(context).push(new MaterialPageRoute(builder: (context){return new AnswerRoute();}));},
                      child: new Container(
                        child: new Text("你认为《三体》中最牛的文明是？", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, height: 1.3, color: ColorRoute.dark == true? Colors.white70 : Colors.black)),
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.topLeft,
                      ),
                    color: ColorRoute.cardBackgroundColor,),
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(bottom: new BorderSide(color: Colors.white10))
                  ),
                ),
                new Container(
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        flex: 1,
                          child: new Container(
                            child: new FlatButton(onPressed: (){Navigator.of(context).push(new MaterialPageRoute(builder: (context){return new AnswerRoute();}));}, 
                                child: new Text("查看全部10000个回答 > "),),
                          )
                      )
                    ],
                  ),
                    decoration: new BoxDecoration(
                      color: ColorRoute.cardBackgroundColor,
                    ),
                    margin: new EdgeInsets.only(bottom: 10.0)
                ),
              new Container(
                child: new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage: new NetworkImage("https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg",),radius: 20.0,
                  ),
                  title: new Text('Flutter'),
                  subtitle: new Text("人生如逆旅，我亦是行人"),
                ),
                decoration: new BoxDecoration(
                  color: ColorRoute.cardBackgroundColor,
                  border: new BorderDirectional(bottom: new BorderSide(color: Colors.white10))
                ),
              ),
                new Container(
                  child: new Text(
                      "回归运动\n\n三体定义的黑暗森林的宇宙格局，就是文明相互攻击和毁灭，越高级的，越明白藏好自己做好清理"
                          "，绝不做探测对方文明的愚蠢行为。\n\n然而归还运动跳出了这个黑暗森林法则，不玩黑暗森林打击，不但探测别的宇宙文明，"
                          "而且还深入了解对方文明，而且是全宇宙的所有文明。\n\n这是一种多么自信的科技实力呀，才能跳出黑暗森林的生存法则呀",
                      style: new TextStyle(height: 1.4, fontSize: 16.0, color: Colors.black54),
                      textAlign: TextAlign.start),
                  margin: EdgeInsets.all(16.0),
                )
            ],
          ),
        ),
        bottomNavigationBar: new BottomAppBar(
          child: new Container(
            height: 50.0,
            child: new Row(
              children: <Widget>[
                new Container(
                  child: new FlatButton.icon(onPressed: (){}, label: new Text("赞同 10 K"), color: ColorRoute.searchBackgroundColor, icon: new Icon(Icons.arrow_drop_up),),
                  margin: new EdgeInsets.only(left: 16.0),
                  height: 30.0,
                ),
                new Container(
                  child: new IconButton(onPressed: (){}, icon: new Icon(Icons.arrow_drop_down),padding: const EdgeInsets.all(0.0)),
                  margin: new EdgeInsets.only(left: 8.0),
                  height: 30.0,
                  decoration: new BoxDecoration(
                    borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
                    color: ColorRoute.searchBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget searchBar(){
    return new Container(
      child: new Row(
        children: <Widget>[
          new Container(
            child: new FlatButton.icon(onPressed: (){Navigator.of(context).pop();},
                icon: new Icon(Icons.arrow_back),
                label: new Text('')),
            width: 60,
          ),
          new Container(
              child:new Expanded(
                    child:new TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '搜索知乎内容'),
                    ),
              )
          )
          ,
          new Container(
            child: new IconButton(icon: new Icon(Icons.share, color: ColorRoute.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
          ),
          new Container(
            child: new IconButton(icon: new Icon(Icons.list, color: ColorRoute.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: ColorRoute.searchBackgroundColor,
      ),
      height: 36,
    );
  }
}