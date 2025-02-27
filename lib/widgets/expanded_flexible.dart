import 'package:flutter/material.dart';

class WidgetExpandedFlexible extends StatelessWidget {
  const WidgetExpandedFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(color: Colors.red)),
        Expanded(child: Container(color: Colors.yellow)),
        Expanded(child: Container(color: Colors.green)),
        Expanded(child: Container(color: Colors.blue)),
      ],
    );
  }
}
