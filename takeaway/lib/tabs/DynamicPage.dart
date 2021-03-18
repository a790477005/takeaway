import 'package:flutter/material.dart';
import '../Units/IconTextButton.dart';

class DynamicPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DynamicPageState();
  }
}

class DynamicPageState extends State<DynamicPage>{
  
  var dataSource = [
    {
      "user_icon":"first_user.jpeg",
      "user_name":"梦想当大王",
      "hopeReceive_time":"3月2日 13:00 - 14:00 送达",
      "logistics_company":"中通快递",
      "location":"22栋",
      "money":"3"
    },
    {
      "user_icon":"second_user.jpeg",
      "user_name":"BiggerP",
      "hopeReceive_time":"3月2日 13:00 - 14:00 送达",
      "logistics_company":"中通快递",
      "location":"22栋",
      "money":"3"
    },
    {
      "user_icon":"third_user.jpeg",
      "user_name":"隔壁老王",
      "hopeReceive_time":"3月2日 13:00 - 14:00 送达",
      "logistics_company":"中通快递",
      "location":"22栋",
      "money":"3"
    }
  ];

  bool isShowSelectView = false;
  // 控制字段
  void isShowSelectState(){
    setState(() {
      isShowSelectView = !isShowSelectView;
      isShowSortView = false;
    });
  }

  bool isShowSortView = false;
  // 控制字段
  void isShowSortViewState(){
    setState(() {
      isShowSortView = !isShowSortView;
      isShowSelectView = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: IconTextButton.icon(onPressed: (){
              isShowSelectState();
            }, icon: Image.asset("images/select_icon.png"),
                label: Text("选择"),
                iconTextAlignment: IconTextAlignment.iconRightTextLeft),flex: 1,
            ),
            SizedBox(width: 1,child: Container(child: Container(color: Color.fromRGBO(184, 184, 184, 1),),),height: 30,),
            Expanded(child: IconTextButton.icon(onPressed: (){
              isShowSortViewState();
            }, icon: Image.asset("images/sort_icon.png"),
                label: Text("排序"),
                iconTextAlignment: IconTextAlignment.iconRightTextLeft),flex: 1,
            )
          ],
        ),
        SizedBox(height: 1,child: Container(color: Color.fromRGBO(184, 184, 184, 1),),),

        Stack(
          children: [
            ListView.builder(itemBuilder: (context,index){
              return Container(
                child: Stack(
                  children: [
                    Positioned(child: Container(
                      child: Image.asset("images/card_photo.png",fit: BoxFit.fill,height: 180,),
                    ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: Container(
                                child: Row(
                                  children: [
                                    Padding(padding: EdgeInsets.fromLTRB(20, 20, 0, 0),child: Image.asset("images/" + this.dataSource[index]["user_icon"]),),
                                    Padding(padding: EdgeInsets.fromLTRB(10, 5, 0, 0),child: Text(this.dataSource[index]["user_name"]),),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                ),
                              ),flex: 1,),
                              Expanded(child: Container(
                                child: Row(
                                  children: [
                                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0),child: Text("¥"),),
                                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 20, 0),child: Text(this.dataSource[index]["money"]),)
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.end,
                                ),
                              ),flex: 1,)
                            ],
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 0),child: SizedBox(height: 1,child: Container(color: Colors.blue,),)),

                          Container(child: Row(
                            children: [
                              Expanded(child: Column(
                                children: [
                                  Container(child: Row(children: [
                                    Padding(padding: EdgeInsets.fromLTRB(20, 5, 0, 0),child: Image.asset("images/time_icon.png"),),
                                    Padding(padding: EdgeInsets.fromLTRB(5, 5, 0, 0),child: Text(this.dataSource[index]['hopeReceive_time'],maxLines: 1,)),
                                  ],)),
                                  Container(child: Row(children: [
                                    Padding(padding: EdgeInsets.fromLTRB(20, 5, 0, 0),child: Image.asset("images/bus_icon.png"),),
                                    Padding(padding: EdgeInsets.fromLTRB(5, 5, 0, 0),child: Text(this.dataSource[index]['logistics_company'])),
                                  ],)),
                                  Container(child: Row(children: [
                                    Padding(padding: EdgeInsets.fromLTRB(20, 5, 0, 0),child: Image.asset("images/locationDynamic_icon.png"),),
                                    Padding(padding: EdgeInsets.fromLTRB(5, 5, 0, 0),child: Text(this.dataSource[index]['location'])),
                                  ],),)
                                ],
                              ),flex: 2,),

                              Expanded(child: Column(children: [
                                  Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0),child: TextButton(child: Text("接单"),
                                  style: new ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),backgroundColor: MaterialStateProperty.all(Colors.blue)))),
                              ],),flex: 1,)
                            ],
                          ),)
                        ],
                      ),
                    )


                  ],
                ),
              );
            },itemCount: dataSource.length,
                shrinkWrap: true),
            Row(
              children: [
                Expanded(flex: 1,child: _showSelectView(),),
                Expanded(flex: 1,child: _showSortView(),)
              ],
            ),
          ],
        )

      ],
    );
  }

  // 根据控制字段添加相应的widget
  _showSelectView(){
    if(isShowSelectView){
      return Container(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [

                ],
              ),
            ),
            SizedBox(child: Container(color: Color.fromRGBO(184, 184, 184, 1),),height: 1,),
            Container(
              child: Row(
                children: [

                ],
              ),
            ),
            SizedBox(child: Container(color: Color.fromRGBO(184, 184, 184, 1),),height: 1,),
            Container(
              child: Row(
                children: [

                ],
              ),
            ),
            SizedBox(child: Container(color: Color.fromRGBO(184, 184, 184, 1),),height: 1,),
          ],
        ),
      color: Color.fromRGBO(249, 249, 249, 1),);
    }else{
      return SizedBox(height: 0,);
    }
  }
  _showSortView(){
    if(isShowSortView){
      return Container(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Center(child: Text("时间"),)
                ],
              ),
            ),
            SizedBox(child: Container(color: Color.fromRGBO(184, 184, 184, 1),),height: 1,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text("位置"),)
                ],
              ),
            ),
            SizedBox(child: Container(color: Color.fromRGBO(184, 184, 184, 1),),height: 1,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text("时间"),)
                ],
              ),
            ),
            SizedBox(child: Container(color: Color.fromRGBO(184, 184, 184, 1),),height: 1,),
          ],
        ),
        color: Color.fromRGBO(249, 249, 249, 1),);
    }else{
      return SizedBox(height: 0,);
    }
  }

}