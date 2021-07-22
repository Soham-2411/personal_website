import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:personal_website/About/about_page.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  final int navbarPage;

  const Home({Key? key, required this.navbarPage}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: h,
            width: w,
            color: Colors.black.withOpacity(0.5),
          ),
          Container(
            height: h * 0.12,
            color: Colors.black.withOpacity(0.15),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                            child: const Home(
                              navbarPage: 0,
                            ),
                            type: PageTransitionType.fade,
                          ));
                    },
                    focusColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Text(
                      'Home',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                          color: (widget.navbarPage == 0)
                              ? HexColor('#7ea0ad')
                              : Colors.white),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                            child: const Home(
                              navbarPage: 1,
                            ),
                            type: PageTransitionType.fade,
                          ));
                    },
                    focusColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Text(
                      'About',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                          color: (widget.navbarPage == 1)
                              ? HexColor('#7ea0ad')
                              : Colors.white),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                              child: const Home(
                                navbarPage: 2,
                              ),
                              type: PageTransitionType.fade,
                            ));
                      });
                    },
                    focusColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Text(
                      'Accomplishments',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                          color: (widget.navbarPage == 2)
                              ? HexColor('#7ea0ad')
                              : Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          (widget.navbarPage == 0)
              ? Description()
              : (widget.navbarPage == 1)
                  ? AboutPage()
                  : Container()
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: w,
          padding: EdgeInsets.only(left: w * 0.1, right: w * 0.1),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "  Hello,",
                            style: TextStyle(
                                color: HexColor('#c3dae3'),
                                fontSize: w * 0.02)),
                        TextSpan(
                            text: " I am\n\n",
                            style: TextStyle(
                                color: HexColor('#c3dae3'),
                                fontSize: w * 0.02)),
                        TextSpan(
                            text: "SOHAM\n",
                            style: TextStyle(
                                color: HexColor('#c3dae3'),
                                fontSize: w * 0.09)),
                        TextSpan(
                            text: "SAKARIA",
                            style: TextStyle(
                                color: HexColor('#c3dae3'),
                                fontSize: w * 0.09)),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: w * 0.45,
                        child: Text(
                          "I am a College Student pursuing bachelor's degree in Computer Science and Engineering at SRMIST, Chennai. A creative thinker, adept in Flutter app and web development.",
                          style: TextStyle(
                              color: HexColor('#c3dae3'), fontSize: w * 0.015),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Connect with me",
                        style: TextStyle(
                            color: HexColor('#c3dae3'), fontSize: w * 0.01),
                      ),
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
                SizedBox(
                  width: w * 0.1,
                ),
                Container(
                  width: w * 0.2,
                  height: h * 0.6,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                          image: AssetImage('assets/Soham_profile.jpg'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
