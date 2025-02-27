import 'package:flutter/material.dart';

class WidgetDecorationContainer extends StatelessWidget{
  const WidgetDecorationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decoration Container", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Row(
        children: [
          Column(
            children: [
              Container(
                // Untuk dekorasi Container, perlu parameter decoration
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.red, // color
                  // shape: BoxShape.circle, // boxshape (bentuk container)
                  shape: BoxShape.rectangle,
                ),
                child: Center(child: Text("Text Decoration Container", style: TextStyle(color: Colors.white, fontSize: 24),),),
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(3, 6),
                      blurRadius: 10
                    ),
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(-3, -2),
                      blurRadius: 10
                    )
                  ],
                // dekorasi shadow
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                ),
                child: Center(child: Text("Text Decoration Container Shadow", style: TextStyle(color: Colors.white, fontSize: 12),),),
              ),

            ],
          ),
          Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  border: Border.all(color: Colors.green, width: 5),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child: Text("Dekorasi border",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900
                  ),
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}