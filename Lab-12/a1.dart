// Write a flutter code scroll whole screen content using single child scrollview.

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                color: Colors.cyanAccent,
              ),
              Container(
                height: 200,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 200,
                color: Colors.redAccent,
              ),
              Container(
                height: 200,
                color: Colors.greenAccent,
              ),
              Container(
                height: 200,
                color: Colors.blueGrey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
