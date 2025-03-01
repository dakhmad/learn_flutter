import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ibadah_list/model/doa.dart';

class DetailScreen extends StatelessWidget {
  final Doa doa;

  DetailScreen({required this.doa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FBFF),
      appBar: AppBar(
        title: Text(
          "Detail Doa",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: Color(0xff2C2C2C),
          ),
          textAlign: TextAlign.start,),
        backgroundColor: Color(0xffF9FBFF),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(doa.ayat, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.right),
            SizedBox(height: 10),
            Text(doa.latin, style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            SizedBox(height: 10),
            Text(doa.artinya, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
