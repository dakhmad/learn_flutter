import 'package:flutter/material.dart';

class WidgetMediaquery extends StatelessWidget {
  WidgetMediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Screen Width: ${screenSize.width.toStringAsFixed(2)}",
                    style: TextStyle(color: Color(0xff000000), fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Orientation: $orientation",
                    style: TextStyle(color: Color(0xff000000), fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "LayoutBuilder: ${constraints.maxWidth}",
                    style: TextStyle(color: Color(0xff000000), fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
