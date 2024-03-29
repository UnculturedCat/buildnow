import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/Shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DeskTopAboutMePage extends StatefulWidget {
  const DeskTopAboutMePage({Key? key}) : super(key: key);

  @override
  State<DeskTopAboutMePage> createState() => _DeskTopAboutMePageState();
}

class _DeskTopAboutMePageState extends State<DeskTopAboutMePage> {
  @override
  Widget build(BuildContext context) {
    return //About
        Container(
      color: mainColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SizedBox(
        height: null,
        child: Stack(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.all(50),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          padding: EdgeInsets.only(
                            left: 30,
                            right: 30,
                          ),
                          child: VerticalDivider(
                            width: 20,
                            indent: 20,
                            endIndent: 0,
                            color: Color.fromARGB(255, 148, 148, 148),
                            thickness: 1.5,
                          ),
                        ),

                        // AnimatedTextKit(animatedTexts: [
                        //   TyperAnimatedText(
                        //     "Scroll down",
                        //     textStyle: GoogleFonts.montserrat(
                        //       color: Color.fromARGB(255, 148, 148, 148),
                        //       fontWeight: FontWeight.w200,
                        //       fontSize: 20,
                        //       //overflow: TextOverflow.visible,
                        //     ),
                        //   ),
                        // ])

                        Text(
                          "Scroll down",
                          style: GoogleFonts.montserrat(
                            color: Color.fromARGB(255, 148, 148, 148),
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            //overflow: TextOverflow.visible,
                          ),
                        ),
                        // Icon(
                        //   Icons.arrow_circle_down_outlined,
                        //   color: Color.fromARGB(255, 148, 148, 148),
                        // ),
                      ],
                    ),
                  ),
                ),

                // Container(
                //   padding: EdgeInsets.all(20),
                //   child: Divider(
                //     color:
                //         Color.fromARGB(255, 255, 255, 255),
                //     thickness: 0.5,
                //   ),
                // ),
                Positioned(
                  top: 300,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   "ABOUT\nME",
                        //   style: GoogleFonts.passionOne(
                        //     color: backGroundTextColor,

                        //     fontWeight: FontWeight.bold,
                        //     fontSize: MediaQuery.of(context).size.width * 0.10,
                        //     //overflow: TextOverflow.visible,
                        //   ),
                        //   textAlign: TextAlign.left,
                        // ),
                        AnimatedTextKit(
                          totalRepeatCount: 1,
                          animatedTexts: [
                            TyperAnimatedText(
                              "ABOUT\nME",
                              speed: Duration(
                                milliseconds: 100,
                              ),
                              textStyle: GoogleFonts.passionOne(
                                color: backGroundTextColor,

                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.10,
                                //overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          CupertinoIcons.person_alt,
                          size: MediaQuery.of(context).size.width * 0.10,
                          color: Color.fromARGB(16, 255, 0, 0),
                        )
                      ],
                    ),
                  ),
                ),

                Positioned.fill(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Image.asset(
                                    "Child.png",
                                    // colorBlendMode: BlendMode.screen,
                                    // color:
                                    //     Color.fromARGB(25, 255, 255, 255),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    // height:
                                    //     MediaQuery.of(context).size.width *
                                    //         0.5,
                                    fit: BoxFit.contain,
                                    filterQuality: FilterQuality.medium,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  width: 900,
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 200,
                                          padding: EdgeInsets.only(
                                            left: 30,
                                            right: 30,
                                          ),
                                          child: VerticalDivider(
                                            width: 20,
                                            indent: 20,
                                            endIndent: 0,
                                            color: Colors.white,
                                            thickness: 2,
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "As a child I have always been intrigued by technology and how things work. I can remember my first big purchase, a stack of “Growing up with Science” encyclopaedias. I was 9 at that time.\n\nSince my dreams to become a fighter pilot like my father has not come as early as I desired, I have buried my head into learning other things like programming.",
                                              textAlign: TextAlign.left,
                                              style: bodyTextStyle,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Image.asset(
                                    "NL.png",
                                    // colorBlendMode: BlendMode.screen,
                                    // color:
                                    //     Color.fromARGB(25, 255, 255, 255),
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    // height:
                                    //     MediaQuery.of(context).size.width *
                                    //         0.5,
                                    fit: BoxFit.contain,
                                    filterQuality: FilterQuality.medium,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  width: 900,
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 200,
                                          padding: EdgeInsets.only(
                                            left: 30,
                                            right: 30,
                                          ),
                                          child: VerticalDivider(
                                            width: 20,
                                            indent: 20,
                                            endIndent: 0,
                                            color: Colors.white,
                                            thickness: 2,
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Moved to the Netherlands to study Creative Technology. After my study, I worked as an embedded software engineer and application software developer. My stint as Software Developer exposed me to working in relatively large teams and collaborating with individuals of varying expertise",
                                              textAlign: TextAlign.left,
                                              style: bodyTextStyle,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Image.asset(
                                    "talk.png",
                                    // colorBlendMode: BlendMode.screen,
                                    // color:
                                    //     Color.fromARGB(25, 255, 255, 255),
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    // height:
                                    //     MediaQuery.of(context).size.width *
                                    //         0.5,
                                    fit: BoxFit.contain,
                                    filterQuality: FilterQuality.medium,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  width: 900,
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 200,
                                          padding: EdgeInsets.only(
                                            left: 30,
                                            right: 30,
                                          ),
                                          child: VerticalDivider(
                                            width: 20,
                                            indent: 20,
                                            endIndent: 0,
                                            color: Colors.white,
                                            thickness: 2,
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Presently, with Buildnow, I get to work with people, break down their problems and, together, build a suitable solution usually in form of a mobile or web application.\n\nBesides building appplications, my other interest include: motorsport, comics, animations, working out and sketching. And, yeah, talking nonstop about cars and planes.",
                                                  textAlign: TextAlign.left,
                                                  style: bodyTextStyle,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    top: 50,
                                                  ),
                                                  child: Wrap(
                                                    children: [
                                                      Text(
                                                        "Check out the git repo for this website written in dart: ",
                                                        style: bodyTextStyle,
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          launchUrl(
                                                            Uri.parse(
                                                                "https://github.com/UnculturedCat/buildnow"),
                                                          );
                                                        },
                                                        child: Text(
                                                          "GitHub",
                                                          style: bodyTextStyle
                                                              .copyWith(
                                                                  color: Colors
                                                                      .blue),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    top: 10,
                                                  ),
                                                  child: Wrap(
                                                    children: [
                                                      Text(
                                                        "And let's connect on",
                                                        style: bodyTextStyle,
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          launchUrl(
                                                            Uri.parse(
                                                                "https://www.linkedin.com/in/daniel-dickson-dillimono/"),
                                                          );
                                                        },
                                                        child: Text(
                                                          "LinkedIn",
                                                          style: bodyTextStyle
                                                              .copyWith(
                                                                  color: Colors
                                                                      .blue),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
