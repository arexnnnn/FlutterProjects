import 'package:flutter/material.dart';
import 'package:weathering_with_you/Activity/home.dart';
import 'package:weathering_with_you/Activity/loading.dart';
import 'package:weathering_with_you/Activity/location.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    routes: {
      "/" : (context) => Location(),
      "/home" : (context) => Home(),
    },
  ));
}