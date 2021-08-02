// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/*"Associate at Hackerearth SRM"  "November 2020 to Present"
"Flutter App Developer at MentorMatch India"  "November 2020 to March 2021"
"Associate at NexTech Club SRM (Psauch Lab)"  "April 2021 to Present"
"App Developer at The Sparks Foundation"  "April 2021 to May 2021"*/

List<List<Color>> _cardColors = [
  [HexColor('#5f0a87'), HexColor('#a4508b')],
  [HexColor('#864ba2'), HexColor('#bf3a30')]
];

class WorkExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: w * 0.15, right: w * 0.15),
      child: Column(
        children: [
          SizedBox(height: w * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              displayUI(w, h, 1, "Hackerearth SRM", "November 2020 to Present",
                  "Associate", "Member of the coding club"),
              Column(
                children: [
                  SizedBox(height: w * 0.1),
                  displayUI(
                      w,
                      h,
                      2,
                      "MentorMatch India",
                      "November 2020 to March 2021",
                      "App developer",
                      "Develop an app for the company using flutter"),
                ],
              ),
            ],
          ),
          //SizedBox(height: w * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              displayUI(w, h, 3, "NexTech Club SRM", "April 2021 to Present",
                  "Associate", "Member of the Psauch Lab"),
              Column(
                children: [
                  SizedBox(height: w * 0.1),
                  displayUI(
                      w,
                      h,
                      4,
                      "The Sparks Foundation",
                      "April 2021 to May 2021",
                      "App developer",
                      "Develop a social media login app using flutter"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget displayUI(double w, double h, int index, String company,
      String duration, String title, String description) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      color: Colors.red,
      elevation: 10,
      child: Container(
        //height: h * 0.4,
        width: w * 0.2,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                colors: (index % 2 == 0)
                    ? [HexColor('#5f0a87'), HexColor('#a4508b')]
                    : [HexColor('#cb218e'), HexColor('#6617cb')],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                company,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2),
              )),
            ),
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                description,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2),
              ),
            ),
            SizedBox(
              height: h * 0.2,
            ),
            const Divider(
              thickness: 1,
              color: Colors.white,
            ),
            Center(
              child: Text(
                duration,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
