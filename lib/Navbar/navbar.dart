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
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            color: (widget.navbarPage == 0)
                ? Colors.orange[900]
                : Colors.transparent,
          ),
          child: FlatButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                    child: const MainPage(
                      pageNo: 0,
                    ),
                    type: PageTransitionType.fade,
                  ));
            },
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Text(
              'Home',
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w400,
                  color:
                      (widget.navbarPage == 0) ? Colors.white : Colors.white),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            color: (widget.navbarPage == 1)
                ? Colors.orange[900]
                : Colors.transparent,
          ),
          child: FlatButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                    child: const MainPage(
                      pageNo: 1,
                    ),
                    type: PageTransitionType.fade,
                  ));
            },
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Text(
              'Work Experience',
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w400,
                  color:
                      (widget.navbarPage == 1) ? Colors.white : Colors.white),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            color: (widget.navbarPage == 2)
                ? Colors.orange[900]
                : Colors.transparent,
          ),
          child: FlatButton(
            onPressed: () {
              setState(() {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                      child: const MainPage(
                        pageNo: 2,
                      ),
                      type: PageTransitionType.fade,
                    ));
              });
            },
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Text(
              'Accomplishments',
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w400,
                  color:
                      (widget.navbarPage == 2) ? Colors.white : Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
