import 'package:flutter/material.dart';

class GridviewText extends StatelessWidget {
  GridviewText({super.key});

  List<Map<String,String>> Imgs=[
    {"img": "https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/5-Series-2024/10182/1685002609273/front-left-side-47.jpg", "text":"BMW-5 Series"},
    {"img":"https://hips.hearstapps.com/hmg-prod/images/2025-bmw-x7-101-65d51e47938f4.jpg?crop=0.783xw:0.587xh;0.0830xw,0.341xh&resize=1200:*","text":"BMW X-7"},
    {"img":"https://hips.hearstapps.com/hmg-prod/images/2023-bmw-760i-xdrive-104-64c806a1395ab.jpg?crop=0.627xw:0.529xh;0.139xw,0.421xh&resize=1200:*","text":"BMW 760 Li"},
    {"img":"https://imgd.aeplcdn.com/1920x1080/n/cw/ec/149075/z4-exterior-left-front-three-quarter.jpeg?isig=0&q=80&q=80","text":"BMW i-7"},
    {"img":"https://imgd.aeplcdn.com/1920x1080/n/cw/ec/135697/2022-m340i-xdrive-exterior-right-front-three-quarter.jpeg?isig=0&q=80&q=80","text":"BMW M34-I"},
    {"img":"https://www.hdcarwallpapers.com/walls/bmw_m5_manhart_mh5_900_limited-HD.jpg","text":"BMW M-5"}
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List of Cities in Grid View"),
          backgroundColor: Colors.grey,
        ),
        body: GridView.builder(
          itemCount: Imgs.length,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index)
        {
          return Column(
            children: [
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(image: NetworkImage(Imgs[index]["img"]!), fit: BoxFit.cover)
                ),
              )),
              // child: Image.network(bgImages[index]["img"]! , fit: BoxFit.cover,))),
              Text(Imgs[index]["text"]!)
            ],
          );
        },),
      ),
    );
  }
}