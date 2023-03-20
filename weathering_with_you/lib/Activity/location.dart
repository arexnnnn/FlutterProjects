import 'package:flutter/material.dart';
import 'package:weathering_with_you/Worker/worker.dart';

class Location extends StatefulWidget {
  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Location Screen'),
    );
  }
}
