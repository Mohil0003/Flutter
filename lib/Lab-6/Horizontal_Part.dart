import 'package:flutter/material.dart';

class HorizontalPart extends StatelessWidget {
  const HorizontalPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mohil"),
      ),

      body: Row(
        children: [
          Expanded(child: Container(
            color: Colors.red,
          ),),

          Expanded(child: Container(
            color: Colors.green,
          ),),

          Expanded(child: Container(
            color: Colors.blue,
          ),),

        ],
      ),
    );
  }
}
