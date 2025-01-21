import 'package:flutter/material.dart';

class bdayCard extends StatefulWidget {
  const bdayCard({super.key});

  @override
  State<bdayCard> createState() => _bdayCardState();
}

class _bdayCardState extends State<bdayCard> {
  TextEditingController name = TextEditingController();

  bool flag=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birth-Day  Card  ${name.text}")),

      body:
      flag ? Stack(
        children: [Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://c8.alamy.com/comp/P71B4K/balloons-happy-birthday-card-template-P71B4K.jpg"),fit: BoxFit.cover)
            )
            ),
        Positioned(child: Text(name.text , style: TextStyle(fontSize: 50 , color: Colors.red),), top: 350 , left: 135,)]
      ) : Column(
            children: [
              TextField(
                      controller: name,
                    ),
              ElevatedButton(onPressed: (){
               setState(() {
                 flag=true;
                 print(name.text);
               });
              }, child: Text("Submit"))
            ],
          ),


    );
  }
}
