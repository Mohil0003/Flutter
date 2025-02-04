// Write a flutter code to use listview/gridview inside single child scrollview.

import 'package:flutter/material.dart';

void main(){
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
    'Morbi',
    'Vapi',
    'Nadiad',
    'Anand',
    'Gandhinagar'
  ];

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
                child: ListView.builder(itemCount: cities.length,itemBuilder: (context,index){
                  return ListTile(
                    title: Center(child: Text('${index+1}.${cities[index]}',style: const TextStyle(fontSize: 50,fontWeight: FontWeight.bold,),)),
                  );
                },)
              ),
              Container(
                height: 200,
                color: Colors.redAccent,
                child: GridView.builder(itemCount: cities.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 5), itemBuilder: (context,index){
                  return Padding(padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70),
                      color: Colors.white38,
                    ),
                    child: Center(child: Text(cities[index],style: TextStyle(fontSize: 20),)),
                  ),
                  );
                }),
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
