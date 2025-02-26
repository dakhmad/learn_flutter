import 'package:flutter/material.dart';
import 'package:learn_widget_flutter/theme.dart';

class TextfieldWidget extends StatefulWidget {
  TextfieldWidget({super.key});

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield Widget Test $_name", style: gayaTextAppBar),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff4074E6),
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Mencoba Input Textfield Widget",
                    textAlign: TextAlign.center,
                    style: gayaTextPrimaryPutih,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(color: biruTheme),
            margin: EdgeInsets.only(top: 8, left: 12, right: 12),
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Masukkan nama Anda disini',
                labelText: "Nama Anda",
              ),
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            // decoration: BoxDecoration(color: lightBiruTheme),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(content: Text("Halo, $_name"));
                  },
                );
              },
              child: Text("Show Nama"),
            ),
          ),
          Text("Nama dari Inputan: $_name"),
        ],
      ),
    );
  }
}
