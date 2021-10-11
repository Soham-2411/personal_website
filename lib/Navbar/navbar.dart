// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:personal_website/homepage.dart';
import 'package:personal_website/landingpage.dart';

class DesktopNavBar extends StatefulWidget {
  final int navbarPage;

  const DesktopNavBar({Key? key, required this.navbarPage}) : super(key: key);
  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Container();
  }
}
