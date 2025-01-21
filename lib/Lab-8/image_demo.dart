import 'package:flutter/material.dart';

class imageDemo extends StatefulWidget {
  const imageDemo({super.key});

  @override
  State<imageDemo> createState() => _imageDemoState();
}

class _imageDemoState extends State<imageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Money Heist",
        style: TextStyle(
          color: Colors.red,
          fontSize: 40,
        ),),
      ),
      body: Image.asset("assets/image/money-heist-2020-4k-h7.jpg"),
    );

  }
}
