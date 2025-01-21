import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  var name;
  DemoScreen({super.key, required this.name});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Birthday Card"),
      ),
          body: Column(
              children: [
                Expanded(
                  child: Container(
                             decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://c8.alamy.com/comp/P71B4K/balloons-happy-birthday-card-template-P71B4K.jpg"),fit: BoxFit.cover)
                    )
                                ),
                ),
                Text(widget.name, style: TextStyle(fontSize: 50 , color: Colors.red),)]
          ),
    );
  }
}
