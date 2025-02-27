import 'package:flutter/material.dart';

class WidgetCenter extends StatelessWidget{
  const WidgetCenter({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Widget Center"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Container(
          width: 125, height: 125,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.yellow,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(9, 10),
                blurRadius: 10,
              )
            ]
          ),
          child: Text("Widget Center hanya punya satu parameter saja, yaitu child"),
        )
      ),
    );
  }
}