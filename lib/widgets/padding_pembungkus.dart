import 'package:flutter/material.dart';

class WidgetPaddingPembungkus extends StatelessWidget{
  const WidgetPaddingPembungkus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding Pembungkus Widget", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              width: 100, height: 100,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 10, offset: Offset(4, 3))
                ]
              ),
              padding: EdgeInsets.all(10),
              child: Center(child: Text("Widget Text dibungkus padding 30")),
            )
          ),
        ],
      ),
    );
  }
}