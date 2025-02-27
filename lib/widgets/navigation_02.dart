import 'package:flutter/material.dart';
import 'package:learn_widget_flutter/widgets/navigation_01.dart';

class WidgetNavigation02 extends StatelessWidget {
  WidgetNavigation02(this.message, {super.key});

  String message = 'Ini halaman ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation: 02")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Navigation 02\nPesan: $message")),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  message = "Ubah dari navigasi02";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WidgetNavigation01(message),
                    ),
                  );
                },
                child: Text("Go to Navigation 01"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
