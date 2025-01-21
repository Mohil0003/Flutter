import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lab_manual/Extra/Navigate_Card.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigateCard()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network("https://tse2.mm.bing.net/th?id=OIP.0WsZeyTQGu1HXMVCLXHuXAHaEw&pid=Api&P=0&h=180"),
      ),
    );
  }
}
