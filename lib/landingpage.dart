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
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [HexColor('#cc2b5e'), HexColor('#753a88')],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )),
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DesktopNavBar(navbarPage: widget.pageNo),
              SizedBox(height: w * 0.02),
              Center(
                  child:
                      (widget.pageNo == 0) ? Description() : WorkExperience())
            ],
          ),
        ),
      ),
    );
  }
}
