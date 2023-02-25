import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Mamba Mentality'),
          backgroundColor: Colors.black26,
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://cdn.quotesgram.com/img/84/10/1827453510-Kobe_muse_quote_black_mamba.jpg'),
          ),
        ),
      ),
    ),
  );
}
