import 'package:flutter/material.dart';

class WidgetFontTest extends StatelessWidget{
  const WidgetFontTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Test Oswald Font", style: TextStyle(
          fontFamily: "Oswald",
          fontSize: 30,
        ),),
      ),
    );
  }
}