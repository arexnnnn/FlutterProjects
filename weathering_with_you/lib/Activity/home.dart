import 'dart:convert';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late String username;

  get http => null;





  /*
  void getData() async{
    Future.delayed(Duration(seconds: 3), (){
      username = "Dhruv";
    });
  }
  */

  void showData(){
    print('$username');
  }

  void timer(){
    Future.delayed(Duration(seconds: 3), (){
      print('Alarm is ringing');
    });
    print('Alarm will run in 3 seconds');
  }

  int counter = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Map info = ModalRoute.of(context).settings.arguments;   //errors coming

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Activity"),
      ),
      body: Column(
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){},
          ),
          Text(info["temp_value"])
        ],
      )
    );
  }
}
