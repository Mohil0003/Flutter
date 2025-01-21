import 'package:flutter/material.dart';
import 'package:lab_manual/Extra/Demo_Screen.dart';

class NavigateCard extends StatefulWidget {
  NavigateCard({super.key});
  @override
  State<NavigateCard> createState() => _NavigateCardState();
}

class _NavigateCardState extends State<NavigateCard> {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DemoScreen(name: name.text)));
            }
          , child: Text("Navigate"))
        ],
      ),
    );

  }
}
