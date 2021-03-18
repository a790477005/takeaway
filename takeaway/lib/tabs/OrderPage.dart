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

  List dataSource = [
    {
      'icon':'2pic.jpg',
      'title':'等待取件',
      'logisticsCompany':'圆通快递',
      'message':'已付款 ¥3',
      'detail':'正在等待取件',
      'buttonMessage':'取消订单'
    },
    {
      'icon':'picking_photo.png',
      'title':'正在取件',
      'logisticsCompany':'圆通快递',
      'message':'已付款 ¥3',
      'detail':'正在取件',
      'buttonMessage':'确认收件'
    },
    {
      'icon':'3pic.jpg',
      'title':'已经送达',
      'logisticsCompany':'圆通快递',
      'message':'已付款 ¥3',
      'detail':'已经送达',
      'buttonMessage':'确认收件'
    }
  ];

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
    ListView.builder(itemBuilder: (context,index){
      return Stack(
        children: [
          Positioned(child: Container(
            child: Image.asset("images/card_photo.png"),
          ),),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 25,),
                Padding(child: Image.asset("images/" + this.dataSource[index]['icon']),padding: EdgeInsets.fromLTRB(0, 30, 0, 0),),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
                        child: Text(this.dataSource[index]['title'],
                          style: new TextStyle(fontSize: 22),maxLines: 1,)),
                    Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0),child: Text(this.dataSource[index]['logisticsCompany'],style: new TextStyle(fontSize: 15,color: Color.fromRGBO(153, 153, 153, 1)),)),
                    Padding(padding: EdgeInsets.fromLTRB(7, 0, 0, 0),child: Text(this.dataSource[index]['message'],style: new TextStyle(fontSize: 15,color: Color.fromRGBO(153, 153, 153, 1)),)),
                  ],
                ),
                Column(
                  children: [
                    Row(children: [
                      Padding(padding: EdgeInsets.fromLTRB(115, 15, 0, 0),child: Text("详情",style: new TextStyle(fontSize: 15,color: Color.fromRGBO(153, 153, 153, 1)),)),
                      Padding(padding: EdgeInsets.fromLTRB(3, 20, 0, 0),child: Image.asset("images/circular_arrow.png")),
                    ],),
                    Padding(padding: EdgeInsets.fromLTRB(90, 20, 0, 0),child: TextButton(child: Text("确认收件"),
                        style: new ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),backgroundColor: MaterialStateProperty.all(Colors.blue))
                    )
                    )
                  ],

                ),
              ]),),
        ],
      );
    },
      itemCount: dataSource.length,
    ),
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