import 'package:clone_day5/widgets/theme.dart';
import 'package:flutter/material.dart';

class CloneDay5 extends StatelessWidget {
  const CloneDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      // appBar: AppBar(title: Text("Clone Day5")),
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "images/ilustrasi.png",
                width: 295,
                height: 210,
              ),
            ),
            SizedBox(height: 50),
            Text("Enjoy Your Meal", style: firstTextStyle),
            SizedBox(height: 6),
            Text("Please rate our experience", style: subTextStyle),
            SizedBox(height: 50),
            Image.asset("images/stars.png", width: 300),
            SizedBox(height: 36),
            Container(
              width: 320,
              height: 130,
              decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
                child: Text("Your message", style: messageTextStyle),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 320,
              height: 55,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff4074E6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                onPressed: () {},
                child: Text("Submit Review", style: rateTextStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
