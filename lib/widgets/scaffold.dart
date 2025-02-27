import 'package:flutter/material.dart';

class WidgetScaffold extends StatelessWidget{
  const WidgetScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        title: Text(
          "AppBar pada Scaffold",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
            "Ini adalah body pada Scaffold"
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    ); // every return don't forget ;
  }
}