import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Container Widget Test",
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: Text(
              "Hi ini adalah Container",
              style: GoogleFonts.lato(
              color: Colors.white
              ),
            )
          ),
          Container(
            color: Colors.lightGreen,
            width: 100,
            height: 100,
            // padding: const EdgeInsets.all(10), // jarak konten yang ada didalam Container
            // margin: const EdgeInsets.all(10), // jarak luar Container

            //test padding margin
            padding: EdgeInsets.only(left: 10, top: 9, right: 4, bottom: 8),
            margin: EdgeInsets.only(left: 100, top: 20, right: 10, bottom: 6),
            child: Text(
              // "Ini adalah Container dengan parameter width, height, padding dan margin",
              "Padding Margin",
              style: GoogleFonts.lato(color: Colors.white),
            ),
          )
        ],
      )
    );
  }
}