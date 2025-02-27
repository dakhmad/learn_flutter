import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kumpulan Button"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          // Mencoba beberapa jenis button yang ada di Flutter
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Ini adalah ElevatedButton"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Ini adalah TextButton"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text("Ini adalah OutlinedButton"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                tooltip: "Ini adalah IconButton",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ButtonStatefulWidget()],
          ),
        ],
      ),
    );
  }
}

class ButtonStatefulWidget extends StatefulWidget {
  const ButtonStatefulWidget({super.key});

  @override
  State<ButtonStatefulWidget> createState() => _ButtonStatefulWidgetState();
}

class _ButtonStatefulWidgetState extends State<ButtonStatefulWidget> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: const <DropdownMenuItem<String>>[
        DropdownMenuItem(value: 'Dart', child: Text("Dart")),
        DropdownMenuItem(value: 'Kotlin', child: Text("Kotlin")),
        DropdownMenuItem(value: 'Swift', child: Text("Swift")),
        DropdownMenuItem(value: 'Website', child: Text("Website")),
      ],
      value: language,
      hint: const Text("Pilih Bahasa"),
      onChanged: (String? value) {
        setState(() {
          language = value;
        });
      },
    );
  }
}
