import 'package:flutter/material.dart';
import 'package:xl_zhihu_flutter/main/HomeRoute.dart';
import 'package:xl_zhihu_flutter/main/IdeaRoute.dart';
import 'package:xl_zhihu_flutter/main/MarketRoute.dart';
import 'package:xl_zhihu_flutter/main/NoticeRoute.dart';

import 'MyRoute.dart';

class MainRoute extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MainRouteState();
  }

}

class _MainRouteState extends State<MainRoute> {

  final tabs = <BottomNavigationBarItem>[BottomNavigationBarItem(title: new Text("首页"), icon: new Icon(Icons.assignment),),
  BottomNavigationBarItem(title: new Text("想法"), icon: new Icon(Icons.all_inclusive),),
  BottomNavigationBarItem(title: new Text("市场"), icon: new Icon(Icons.add_shopping_cart),),
  BottomNavigationBarItem(title: new Text("通知"), icon: new Icon(Icons.add_alert),),
  BottomNavigationBarItem(title: new Text("我的"), icon: new Icon(Icons.perm_identity),),];

  final pages=[new HomeRoute(), new IdeaRoute(), new MarketRoute(), new NoticeRoute(), new MyRoute()];

  //当前显示页面的
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: tabs,currentIndex: currentIndex,
        //所以一般都是使用fixed模式，此时，导航栏的图标和标题颜色会使用fixedColor指定的颜色，
        // 如果没有指定fixedColor，则使用默认的主题色primaryColor
        type: BottomNavigationBarType.fixed,
        onTap: (index){_changeDex(index);},),
      body: pages[currentIndex],);
  }

  void _changeDex(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;});
    }
  }
}