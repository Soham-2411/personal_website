import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:html' as html;

List<String> socialMediaLinks = [
  'https://github.com/Soham-2411',
  'https://www.instagram.com/_soham_sakaria/',
  'https://www.linkedin.com/in/soham-sakaria-13251718b/',
  'https://medium.com/@sohamsakaria'
];

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
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
                              color: Colors.white, fontSize: w * 0.02)),
                      TextSpan(
                          text: " I am\n\n",
                          style: TextStyle(
                              color: Colors.white, fontSize: w * 0.02)),
                      TextSpan(
                          text: "SOHAM\n",
                          style: TextStyle(
                              color: Colors.white, fontSize: w * 0.09)),
                      TextSpan(
                          text: "SAKARIA",
                          style: TextStyle(
                              color: Colors.white, fontSize: w * 0.09)),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      width: w * 0.45,
                      child: Text(
                        "I am a College Student pursuing bachelor's degree in Computer Science and Engineering at SRMIST, Chennai. A creative thinker, adept in Flutter app and web development.",
                        style:
                            TextStyle(color: Colors.white, fontSize: w * 0.015),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      "Connect with me: ",
                      style: TextStyle(color: Colors.white, fontSize: w * 0.01),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: w * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Container(
                            width: w * 0.04,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Github_logo.png'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                          onPressed: () {
                            html.window.open(socialMediaLinks[0], '_black');
                          },
                        ),
                        IconButton(
                          icon: Container(
                            width: w * 0.04,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/Instagram_logo.png'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                          onPressed: () {
                            html.window.open(socialMediaLinks[1], '_black');
                          },
                        ),
                        IconButton(
                          icon: Container(
                            width: w * 0.04,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/LinkedIn_logo.png'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                          onPressed: () {
                            html.window.open(socialMediaLinks[2], '_black');
                          },
                        ),
                        IconButton(
                          icon: Container(
                            width: w * 0.04,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/medium_logo.png'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                          onPressed: () {
                            html.window.open(socialMediaLinks[3], '_black');
                          },
                        ),
                      ],
                    ),
                  )
                ],
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
    );
  }
}
