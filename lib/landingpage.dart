import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:personal_website/Navbar/navbar.dart';
import 'package:personal_website/Work%20Exp/workexperience.dart';
import 'package:personal_website/homepage.dart';

class MainPage extends StatefulWidget {
  final int pageNo;

  const MainPage({Key? key, required this.pageNo}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: HexColor('#1b191b'),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: h * 0.1,
                  width: w * 0.05,
                  color: Colors.black,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("S",
                          style: TextStyle(
                              fontSize: w * 0.03, color: Colors.white)),
                      Text("Soham",
                          style: TextStyle(
                              fontSize: w * 0.01, color: Colors.white))
                    ],
                  )),
                ),
                Container(
                  height: h * 0.9,
                  width: w * 0.05,
                  color: HexColor('#171517'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
