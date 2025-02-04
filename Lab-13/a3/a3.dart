import 'package:flutter/material.dart';

import 'Home.dart';
import 'Page1.dart';
import 'Page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _DemoState();
}

class _DemoState extends State<MyApp> {

  int idx = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [Home(), Page1(), Page2()];
    return MaterialApp(
      home: Scaffold(
        body: list[idx],
          bottomNavigationBar:BottomNavigationBar(
              currentIndex: idx,
              onTap: (value) {
                setState(() {
                  idx = value;
                });
              }, items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_emergency_rounded), label: "Page1"),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_outlined), label: "Page2"),
          ]),
      ),
    );
  }
}
