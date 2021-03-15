import 'package:flutter/material.dart';

import 'DynamicPage.dart';
import 'ReleasePage.dart';
import 'OrderPage.dart';
import 'MinePage.dart';

class Tabs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabsState();
  }
}

class TabsState extends State<Tabs> {

  int _currentIndex = 0;

  List _pageList = [
    DynamicPage(),
    ReleasePage(),
    OrderPage(),
    MinePage()
  ];

  List _pageTitleList = [
    "重庆邮电大学",
    "发布",
    "订单",
    "我的"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this._pageTitleList[this._currentIndex],
          style: new TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          iconSize: 15.0,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: new Image.asset("images/dynamic_icon.png"),
                title: Text("动态")
            ),
            BottomNavigationBarItem(
                icon: new Image.asset("images/release_icon.png"),
                title: Text("发布")
            ),
            BottomNavigationBarItem(
                icon: new Image.asset("images/order_icon.png"),
                title: Text("订单")
            ),
            BottomNavigationBarItem(
                icon: new Image.asset("images/mine_icon.png"),
                title: Text("我的")
            )
          ]),
    );
  }
}