import 'package:flutter/material.dart';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_picker/flutter_picker.dart';

class ReleasePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ReleasePageState();
  }
}

class ReleasePageState extends State<ReleasePage>{

  String dateTime;
  String LogisticsCompany;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 10,),
          new Image.asset("images/release_line.png",height: 12,),
          SizedBox(height: 20,),

          new Row(
            children: <Widget>[
              SizedBox(width: 20),
              Expanded(
                child: Row(
                  children: <Widget>[
                    new Image.asset("images/user_icon.png"),
                    SizedBox(width: 10,),
                    Expanded(
                      child: new TextField(decoration: new InputDecoration(
                          hintText: "请输入姓名",
                          border: InputBorder.none
                      ),
                          style: new TextStyle(decorationStyle: TextDecorationStyle.dashed,fontSize: 16),
                          maxLines: 1),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    new Image.asset("images/phone_icon.png"),
                    SizedBox(width: 10,),
                    Expanded(
                      child: new TextField(decoration: new InputDecoration(
                          hintText: "请输入联系电话",
                          border: InputBorder.none
                      ),
                        style: new TextStyle(decorationStyle: TextDecorationStyle.dashed,fontSize: 16),
                        maxLines: 1,),
                    ),
                    SizedBox(width: 20,)
                  ],
                ),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              SizedBox(width: 22),
              Expanded(
                child: Row(
                  children: <Widget>[
                    new Image.asset("images/location_icon.png"),
                    SizedBox(width: 12,),
                    Expanded(
                      child: new TextField(decoration: new InputDecoration(
                          hintText: "请输入具体地址",
                          border: InputBorder.none
                      ),
                          style: new TextStyle(decorationStyle: TextDecorationStyle.dashed,fontSize: 16),
                          maxLines: 1),
                    ),
                    new Image.asset("images/edit_icon.png"),
                    SizedBox(width: 20,)
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 25,),
          SizedBox(height: 1,child: new Container(
            color: Color.fromRGBO(235, 235, 235, 1),
          ),),
          SizedBox(height: 10,child: new Container(
            color: Color.fromRGBO(245, 245, 245, 1),
          ),),
          SizedBox(height: 1,child: new Container(
            color: Color.fromRGBO(235, 235, 235, 1),
          ),),

          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18),
              Expanded(
                child: Row(
                  children: <Widget>[
                    new Text("送达时间",style: new TextStyle(
                        fontSize: 16
                    ),),
                    SizedBox(width: 12,),
                    Expanded(child: new Text(this.dateTime == null? DateTime.now().toString() : this.dateTime,
                      style: new TextStyle(
                          fontSize: 16
                      ),),),
                    new IconButton(icon: new Image.asset("images/down_access.png"),onPressed: (){
                        DatePicker.showDatePicker(context,showTitleActions: true,minTime: DateTime(2020,3,1),maxTime:DateTime(2099,3,1),
                          onChanged: (date){
                            print('change $date');
                          },
                          onConfirm: (date){
                            print('confirm $date');
                            String selectDateTime = date.year.toString() + '年' + date.month.toString() + '月' + date.day.toString() + '日';
                            setState(() {
                              this.dateTime = selectDateTime;
                            });
                          },
                          locale: LocaleType.zh,
                          currentTime: DateTime.now()
                        );
                    },),
                    SizedBox(width: 8,)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18,),
              Expanded(child: SizedBox(height: 1,child: new Container(
                color: Color.fromRGBO(235, 235, 235, 1),
              ),)),
              SizedBox(width: 18,)
            ],
          ),

          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18),
              Expanded(
                child: Row(
                  children: <Widget>[
                    new Text("快递公司",style: new TextStyle(
                        fontSize: 16
                    ),),
                    SizedBox(width: 12,),
                    Expanded(child: new Text(this.LogisticsCompany == null ? "[京东快递]" : this.LogisticsCompany ,
                      style: new TextStyle(
                          fontSize: 16
                      ),),),
                    new IconButton(icon: new Image.asset("images/down_access.png"),onPressed: (){
                      showPicker(context);
                    },),
                    SizedBox(width: 8,)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18,),
              Expanded(child: SizedBox(height: 1,child: new Container(
                color: Color.fromRGBO(235, 235, 235, 1),
              ),)),
              SizedBox(width: 18,)
            ],
          ),

          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18),
              Expanded(
                child: Row(
                  children: <Widget>[
                    new Text("取货号码",style: new TextStyle(
                        fontSize: 16
                    ),),
                    SizedBox(width: 12,),
                    Expanded(child: new TextField(decoration: new InputDecoration(
                        hintText: "请输入快递取货号码",
                        border: InputBorder.none
                    ),
                        style: new TextStyle(decorationStyle: TextDecorationStyle.dashed,fontSize: 16),
                        maxLines: 1)),
                    SizedBox(width: 15,)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18,),
              Expanded(child: SizedBox(height: 1,child: new Container(
                color: Color.fromRGBO(235, 235, 235, 1),
              ),)),
              SizedBox(width: 18,)
            ],
          ),

          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18),
              Expanded(
                child: Row(
                  children: <Widget>[
                    new Text("备    注",style: new TextStyle(
                        fontSize: 16
                    ),),
                    SizedBox(width: 12,),
                    Expanded(child: new TextField(decoration: new InputDecoration(
                        hintText: " （选填）添加备注",
                        border: InputBorder.none
                    ),
                        style: new TextStyle(decorationStyle: TextDecorationStyle.dashed,fontSize: 16),
                        maxLines: 1)),
                    SizedBox(width: 18,)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18,),
              Expanded(child: SizedBox(height: 1,child: new Container(
                color: Color.fromRGBO(235, 235, 235, 1),
              ),)),
              SizedBox(width: 18,)
            ],
          ),

          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18),
              Expanded(
                child: Row(
                  children: <Widget>[
                    new Text("赏    金",style: new TextStyle(
                        fontSize: 16
                    ),),
                    SizedBox(width: 12,),
                    Expanded(child: new TextField(decoration: new InputDecoration(
                        hintText: "   (¥) 请输入数字",
                        border: InputBorder.none
                    ),
                        style: new TextStyle(decorationStyle: TextDecorationStyle.dashed,fontSize: 16),
                        maxLines: 1)),
                    SizedBox(width: 18,)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 13,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18,),
              Expanded(child: SizedBox(height: 1,child: new Container(
                color: Color.fromRGBO(235, 235, 235, 1),
              ),)),
              SizedBox(width: 18,)
            ],
          ),

          SizedBox(height: 30,),
          new Row(
            children: <Widget>[
              SizedBox(width: 18,),
              Expanded(child: new RaisedButton(
                  child: new Text("确认"),
                  onPressed: (){

                  }),),
              SizedBox(width: 18,),
            ],
          ),

          SizedBox(height: 30,)

        ],
      ),
    );
  }

  static const List pickerData = ["京东快递","顺丰快递","申通快递"];
  showPicker(BuildContext context) {
    Picker picker = new Picker(
        adapter: PickerDataAdapter<String>(pickerdata: pickerData),
        changeToFirst: true,
        textAlign: TextAlign.left,
        columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
          setState(() {
            this.LogisticsCompany = picker.getSelectedValues().toString();
          });
        }
    );
    picker.showModal(context);
  }
}