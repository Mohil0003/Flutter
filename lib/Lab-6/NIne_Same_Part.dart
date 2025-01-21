import 'package:flutter/material.dart';

class NineSamePart extends StatelessWidget {
  const NineSamePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MJ 's Layout"),
      ),

      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          )),

          Expanded(child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.brown,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.blueGrey,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.purpleAccent,
                ),
              ),
            ],
          )),

          Expanded(child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.orangeAccent,
                ),
              ),

            ],
          )),


        ],

      ),

    );
  }
}