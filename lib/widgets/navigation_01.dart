import 'package:flutter/material.dart';
import 'package:learn_widget_flutter/widgets/navigation_02.dart';

class WidgetNavigation01 extends StatelessWidget {
  WidgetNavigation01(this.message, {super.key});

  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation: 01")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Navigation 01\nPesan: $message")),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  message = "Ubah dari navigasi01";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WidgetNavigation02(message);
                      },
                    ),
                  );
                },
                child: Text("Go to Navigation 02"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
