import 'package:flutter/material.dart';
import 'package:xl_zhihu_flutter/bean/Question.dart';
import 'package:xl_zhihu_flutter/common/ColorRoute.dart';

class HotRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HotRouteState();
  }

}

class HotRouteState extends State<HotRoute> {
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
            hotWidget(questionList[0]),
            hotWidget(questionList[1]),
            hotWidget(questionList[2]),
            hotWidget(questionList[3]),
            hotWidget(questionList[4])
          ],
        ),
      ),
    );
  }

  Widget hotWidget(Question question){
    return new Container(
        margin: const EdgeInsets.only(top: 2.0, bottom: 3.0),
      decoration: new BoxDecoration(
          color: ColorRoute.cardBackgroundColor,
          border: new BorderDirectional(
              bottom: new BorderSide(color: ColorRoute.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
          )
      ),
      child: new FlatButton(onPressed: (){},
          child: new Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: new Row(
              children: <Widget>[
                new Expanded(flex:1,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: new Text(
                              question.order,
                              style: new TextStyle(
                                  color: question.order.compareTo("03") <= 0 ? Colors.red : Colors.yellow,
                                  fontSize: 18.0
                              )
                          ),
                            alignment: Alignment.topLeft,
                        ),
                        question.rise != null ?
                        new Row(
                          children: <Widget>[
                            new Icon(Icons.arrow_upward, color: Colors.red, size: 10.0,),
                            new Text(question.rise, style: new TextStyle(color: Colors.red, fontSize: 10.0),)
                          ],
                        ) : new Container()
                      ],
                    )),
                new Expanded(
                    flex: 6,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            question.title,
                            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, height: 1.1, color: ColorRoute.dark == true ? Colors.white70 : Colors.black),
                          ),
                          padding: const EdgeInsets.only(bottom: 10.0,right: 4.0),
                          alignment: Alignment.topLeft,
                        ),
                        question.mark != null ?
                        new Container(
                            child: new Text(question.mark, style: new TextStyle(color: ColorRoute.fontColor)),
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(bottom: 8.0,right: 4.0)
                        ) : new Container(),
                        new Container(
                          child: new Text(question.hotNum, style: new TextStyle(color: ColorRoute.fontColor)),
                          alignment: Alignment.topLeft,
                        )
                      ],
                    )
                ),
                new Expanded(
                  flex: 3,
                    child: new AspectRatio(
                      aspectRatio: 3.0/2.0,
                      child: new Container(
                        foregroundDecoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new NetworkImage(question.imgUrl),centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),),
                            borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                        ),
                      ),
                    )
                )
              ],
            ),
          ))
    );
  }
}