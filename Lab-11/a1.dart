import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> cities = [
    'Ahmedabad',
    'Rajkot',
    'Jamnagar',
    'Bhavnagar',
    'Surat',
    'Valsad',
    'Hazira',
    'Morbi'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('List of cities in ListView'),backgroundColor: Colors.cyan,),
        body: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(child: ListTile(title: Text(cities[index]),));
            }
        ),
      ),
    );
  }
}