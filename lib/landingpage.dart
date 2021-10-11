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
                Stack(
                  children: [
                    Container(
                      height: h,
                      width: w * 0.035,
                      color: HexColor('#171517'),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.home_outlined,
                              color: Colors.white,
                              size: w * 0.018,
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(height: h * 0.03),
                          IconButton(
                            icon: Icon(
                              Icons.person_outline,
                              color: Colors.white,
                              size: w * 0.018,
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(height: h * 0.03),
                          IconButton(
                            icon: Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                              size: w * 0.018,
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(height: h * 0.03),
                          IconButton(
                            icon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                              size: w * 0.018,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: h * 0.1,
                      width: w * 0.035,
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
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
