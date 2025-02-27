import 'package:flutter/material.dart';

class CardDesign1 extends StatelessWidget {
  const CardDesign1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              
            ),
          ),
        ],
      ),
    );
  }
}
