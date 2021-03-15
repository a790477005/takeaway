import 'package:flutter/material.dart';

class ReleasePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ReleasePageState();
  }
}

class ReleasePageState extends State<ReleasePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        new Image.asset("release_line.png",height: 10,),
      ],
    );
  }
}