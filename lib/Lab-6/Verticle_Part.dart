import 'package:flutter/material.dart';

class VerticlePart extends StatelessWidget {
  const VerticlePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mohil"),
      ),

      body: Column(
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