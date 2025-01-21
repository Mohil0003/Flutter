import 'package:flutter/material.dart';

class FlexNinePart extends StatelessWidget {
  const FlexNinePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mohil,s Layout"),),

      body: Row(
        children: [
          Expanded(child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.grey,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.redAccent,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ],
          )),

          Expanded(child: Column(
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
                  color: Colors.white38,
                ),
              ),
            ],
          )),

          Expanded(child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellowAccent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                ),
              ),
            ],
          )),


              ],
            )

      );
  }
}
