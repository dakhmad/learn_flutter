import 'package:flutter/material.dart';

class WidgetImage extends StatelessWidget {
  const WidgetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.network(
                    "https://picsum.photos/200/300",
                    width: 200,
                    height: 200,
                  ),
                  Image.asset('images/hiu.png', width: 200, height: 200),
                  Image.asset('images/dani-blue.png', width: 200, height: 200),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
