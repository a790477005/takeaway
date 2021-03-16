import 'package:flutter/material.dart';

import '../Units/MyUnderLineTabIndicator.dart';

class OrderPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OrderPageState();
  }
}

class OrderPageState extends State<OrderPage> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: Colors.white,
        title: _tabBarTop(),
      ),
      body: new Container(
        child: _tabBarView(),
      ),
    );
  }
  
  _tabBarView() => TabBarView(children: <Widget>[
    Center(child: new Text("我的发布"),),
    Center(child: new Text("我的跑腿"),)
  ],
  controller: tabController,);

  _tabBarTop() => TabBar(
      tabs: <Widget>[
      Tab(text: '我的发布'),
      Tab(text: '我的跑腿'),
      ],
      controller: tabController,
      indicatorColor: Colors.blue,
      indicatorWeight: 1,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: MyUnderlineTabIndicator(
          borderSide: BorderSide(width: 3.0, color: Colors.blue)),
          indicatorPadding: EdgeInsets.all(5),
          labelColor: Colors.blue,
          labelStyle: TextStyle(fontSize: 14),
          unselectedLabelColor: Colors.blue,
          unselectedLabelStyle: TextStyle(fontSize: 14),);

}