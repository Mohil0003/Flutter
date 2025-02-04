import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> images = [
    "https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/5-Series-2024/10182/1685002609273/front-left-side-47.jpg",
    "https://hips.hearstapps.com/hmg-prod/images/2025-bmw-x7-101-65d51e47938f4.jpg?crop=0.783xw:0.587xh;0.0830xw,0.341xh&resize=1200:*",
    "https://hips.hearstapps.com/hmg-prod/images/2023-bmw-760i-xdrive-104-64c806a1395ab.jpg?crop=0.627xw:0.529xh;0.139xw,0.421xh&resize=1200:*",
    "https://imgd.aeplcdn.com/1920x1080/n/cw/ec/149075/z4-exterior-left-front-three-quarter.jpeg?isig=0&q=80&q=80",
    "https://imgd.aeplcdn.com/1920x1080/n/cw/ec/135697/2022-m340i-xdrive-exterior-right-front-three-quarter.jpeg?isig=0&q=80&q=80",
    "https://stimg.cardekho.com/images/carexteriorimages/630x420/BMW/M5-2025/11821/1719462197562/front-left-side-47.jpg?impolicy=resize&imwidth=480"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('List of cities in Gridview'),
            backgroundColor: Colors.cyan,
          ),
          body: GridView.builder(
              itemCount: images.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(child: Image.network(images[index],fit: BoxFit.fitHeight,),);
              }
          )
      ),
    );
  }
}
