import 'package:flutter/material.dart';

class WidgetExpandedFlexible extends StatelessWidget {
  const WidgetExpandedFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 2, child: Container(color: Colors.red)),// menerapkan flex 2
        Expanded(child: Container(color: Colors.yellow)),
        // Expanded(child: Container(color: Colors.green)),
        // Expanded(child: Container(color: Colors.blue)),
        Expanded(child: Flexible(child: Container(color: Colors.black))),
      ],
    );
  }
}
