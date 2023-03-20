import 'package:flutter/material.dart';
import '../Worker/worker.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  late String temp;
  late String hum;
  late String airSpeed;
  late String des;
  late String main;

  void startApp() async{
    worker instance = worker(location: "Mumbai");
    await instance.getData();

    temp = instance.temperature;
    hum = instance.humidity;
    airSpeed = instance.airSpeed;
    des = instance.description;
    main = instance.main;
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "temp_value" : temp,
      "hum_value" : hum,
      "airSpeed_value" : airSpeed,
      "des_value" : des,
      "main_value" : main,
    });
  }

  @override
  void initState(){
    startApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Loading'),
      )
    );
  }
}
