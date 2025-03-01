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
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Center(
                child: Card(
                  color: Color(0xff905cd4),
                  child: Center(
                    child: Image.asset(
                      "images/al_quran.png",
                      height: 150,
                    )
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Text(
                doa.doa,
                softWrap: true,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff2C2C2C),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Center(
              child: Text(
                "بِسْمِ اللَّهِ الرحمن الرَّحِيمِ",
                textAlign: TextAlign.center,
                softWrap: true,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff2C2C2C),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.only(left: 24),
              child: Text(
                textAlign: TextAlign.end,
                doa.ayat,
                softWrap: true,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff2C2C2C),
                ),
              ),
            ),
            Text(
              "Artinya:",
              textAlign: TextAlign.justify,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color(0xff2C2C2C),
              ),
            ),
            SizedBox(height: 12,),
            Text(
              doa.artinya,
              textAlign: TextAlign.justify,
              softWrap: true,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff2C2C2C),
              ),
            ),
          ],
        ),


        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(doa.ayat, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.right),
        //     SizedBox(height: 10),
        //     Text(doa.latin, style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
        //     SizedBox(height: 10),
        //     Text(doa.artinya, style: TextStyle(fontSize: 16)),
        //   ],
        // ),
      ),
    );
  }
}
