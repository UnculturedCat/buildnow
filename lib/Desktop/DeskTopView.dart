import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:buildnow/arrow_icons_icons.dart';
import 'package:buildnow/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg_provider/flutter_svg_provider.dart' as newSVG;
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class DeskTopView extends StatefulWidget {
  const DeskTopView({Key? key}) : super(key: key);

  @override
  State<DeskTopView> createState() => _DeskTopViewState();
}

class _DeskTopViewState extends State<DeskTopView> {
  bool aboutToClick = false;
  bool hoveringOver = false;
  bool animationDone = false;
  DesktopPages currentpage = DesktopPages.home;

  final AutoScrollController _scrollController =
      AutoScrollController(axis: Axis.horizontal);

  void goToContactForm() {
    Navigator.pushNamed(context, '/Contact');
  }

  void changePage(DesktopPages selectedPage) {
    setState(() {
      currentpage = selectedPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        shadowColor: Color.fromARGB(17, 0, 0, 0),
        actions: [
          Container(
            padding: navbarButtonPadding,
            child: TextButton(
              onPressed: () {
                changePage(DesktopPages.home);
              },
              child: Text(
                "Home",
                style: currentpage == DesktopPages.home
                    ? navBarTextStyle
                    : navBarTextStyle.copyWith(
                        fontSize: 15,
                      ),
              ),
            ),
          ),
          Container(
            padding: navbarButtonPadding,
            child: TextButton(
              onPressed: () {
                changePage(DesktopPages.realize);
              },
              child: Text(
                "Realize",
                style: currentpage == DesktopPages.realize
                    ? navBarTextStyle
                    : navBarTextStyle.copyWith(
                        fontSize: 15,
                      ),
              ),
            ),
          ),
          Container(
            padding: navbarButtonPadding,
            child: TextButton(
              onPressed: () {
                changePage(DesktopPages.approach);
              },
              child: Text(
                "Approach",
                style: currentpage == DesktopPages.approach
                    ? navBarTextStyle
                    : navBarTextStyle.copyWith(
                        fontSize: 15,
                      ),
              ),
            ),
          ),
          Container(
            padding: navbarButtonPadding,
            child: TextButton(
              onPressed: () {
                changePage(DesktopPages.aboutMe);
              },
              child: Text(
                "About me",
                style: currentpage == DesktopPages.aboutMe
                    ? navBarTextStyle
                    : navBarTextStyle.copyWith(
                        fontSize: 15,
                      ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          )
        ],
      ),
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(
                  "me.jpg",
                ).image,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Color.fromARGB(178, 38, 38, 38),
                  BlendMode.darken,
                ),
              ),
            ),
            //  color: Color.fromARGB(255, 38, 38, 38),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // //Me
                      Container(
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 50,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi, I'm Daniel and I build",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 26,
                                      //overflow: TextOverflow.visible,
                                    ),
                                  ),
                                  // Text(
                                  //   "Daniel",
                                  //   style: subHeadingTextStyle,
                                  // ),
                                  Text(
                                    "Mobile and the Web applications",
                                    style: bodyTextStyle,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: 20,
                                    ),
                                    child: ElevatedButton.icon(
                                      style: actionButtonStyle,
                                      onPressed: goToContactForm,
                                      onHover: (hover) {
                                        setState(() {
                                          aboutToClick = hover;
                                        });
                                      },
                                      icon: Icon(Icons.send),
                                      label: aboutToClick
                                          ? AnimatedTextKit(
                                              totalRepeatCount: 1,
                                              animatedTexts: [
                                                TyperAnimatedText(
                                                  "Let's chat",
                                                  textStyle:
                                                      GoogleFonts.montserrat(
                                                    //fontSize: 50,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  speed: const Duration(
                                                      milliseconds: 50),
                                                )
                                              ],
                                            )
                                          : Text(
                                              "Let's chat",
                                              style: GoogleFonts.montserrat(
                                                //fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: ListTile(
                          leading: Icon(
                            CupertinoIcons.phone,
                            color: Colors.white,
                          ),
                          title: Text(
                            "+31684555925",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              //overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: ListTile(
                          leading: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
                          title: Text(
                            "info@buildnow.dev",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              //overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.buildingCircleArrowRight,
                            color: Colors.white,
                          ),
                          title: Column(
                            children: [
                              Text(
                                "Deeformed BV",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  //overflow: TextOverflow.visible,
                                ),
                              ),
                              Text(
                                "KVK 83590668",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  //overflow: TextOverflow.visible,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //view column
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.7,
            color: Color.fromARGB(255, 38, 38, 38),
            child: Stack(
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
                          height: MediaQuery.of(context).size.height * 0.35,
                          padding: EdgeInsets.only(
                            left: 30,
                            right: 30,
                          ),
                          child: VerticalDivider(
                            width: 20,
                            indent: 20,
                            endIndent: 0,
                            color: Color.fromARGB(255, 148, 148, 148),
                            thickness: 1,
                          ),
                        ),
                        AnimatedTextKit(animatedTexts: [
                          TyperAnimatedText(
                            "Scroll down",
                            textStyle: GoogleFonts.montserrat(
                              color: Color.fromARGB(255, 148, 148, 148),
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                              //overflow: TextOverflow.visible,
                            ),
                          ),
                        ])
                        // Text(
                        //   "Scroll down",
                        //   style: GoogleFonts.montserrat(
                        //     color: Color.fromARGB(255, 148, 148, 148),
                        //     fontWeight: FontWeight.w100,
                        //     fontSize: 20,
                        //     //overflow: TextOverflow.visible,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Stack(
                          children: [
                            // Align(
                            //   alignment: Alignment.bottomRight,
                            //   child: SizedBox(
                            //     width: MediaQuery.of(context).size.width * 0.5,
                            //     child: Image.asset(
                            //       "lana.PNG",
                            //       //colorBlendMode: BlendMode.screen,
                            //       //color: Color.fromARGB(25, 255, 255, 255),
                            //       fit: BoxFit.cover,
                            //       filterQuality: FilterQuality.medium,
                            //     ),
                            //   ),
                            // ),
                            Container(
                              constraints: BoxConstraints.expand(),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 100,
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                0.45,
                                        //left: 20,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: 50,
                                          ),
                                          AnimatedTextKit(
                                            totalRepeatCount: 1,
                                            onNext: (stage, done) {},
                                            onFinished: () {
                                              setState(() {
                                                animationDone = true;
                                              });
                                            },
                                            animatedTexts: [
                                              TyperAnimatedText(
                                                "Bring your app ideas\nto life.",
                                                textStyle:
                                                    GoogleFonts.passionOne(
                                                  color: Colors.white,

                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.10,
                                                  //overflow: TextOverflow.visible,
                                                ),
                                                textAlign: TextAlign.right,
                                                speed: const Duration(
                                                    milliseconds: 70),
                                              ),
                                            ],
                                          ),
                                          // Container(
                                          //   padding: EdgeInsets.only(
                                          //     top: 20,
                                          //   ),
                                          //   child: ElevatedButton.icon(
                                          //     style: actionButtonStyle,
                                          //     onPressed: goToContactForm,
                                          //     onHover: (hover) {
                                          //       setState(() {
                                          //         aboutToClick = hover;
                                          //       });
                                          //     },
                                          //     icon: Icon(
                                          //       Icons.arrow_downward,
                                          //     ),
                                          //     label: aboutToClick
                                          //         ? AnimatedTextKit(
                                          //             totalRepeatCount: 1,
                                          //             animatedTexts: [
                                          //               TyperAnimatedText(
                                          //                 "EXPLORE",
                                          //                 textStyle:
                                          //                     GoogleFonts
                                          //                         .montserrat(
                                          //                   //fontSize: 50,
                                          //                   fontWeight:
                                          //                       FontWeight
                                          //                           .w900,
                                          //                 ),
                                          //                 speed:
                                          //                     const Duration(
                                          //                         milliseconds:
                                          //                             50),
                                          //               )
                                          //             ],
                                          //           )
                                          //         : Text(
                                          //             "EXPLORE",
                                          //             style: GoogleFonts
                                          //                 .montserrat(
                                          //               //fontSize: 50,
                                          //               fontWeight:
                                          //                   FontWeight.w900,
                                          //             ),
                                          //           ),
                                          //   ),
                                          // )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

//realize
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
                                  // Container(
                                  //   padding: EdgeInsets.all(20),
                                  //   child: Divider(
                                  //     color:
                                  //         Color.fromARGB(255, 255, 255, 255),
                                  //     thickness: 0.5,
                                  //   ),
                                  // ),
                                  Positioned(
                                    //alignment: Alignment.centerLeft,
                                    top: 300,

                                    child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "REALIZE",
                                            style: GoogleFonts.passionOne(
                                              color: backGroundTextColor,

                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.10,
                                              //overflow: TextOverflow.visible,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            CupertinoIcons.lightbulb_fill,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.10,
                                            color:
                                                Color.fromARGB(255, 255, 0, 0),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  // Align(
                                  //   alignment: Alignment.center,
                                  //   child: SingleChildScrollView(
                                  //     scrollDirection: Axis.horizontal,
                                  //     child: Row(
                                  //       children: [
                                  //         // Container(
                                  //         //   padding: EdgeInsets.all(20),
                                  //         //   height: 200,
                                  //         //   color: Color.fromARGB(
                                  //         //       140, 0, 140, 255),
                                  //         //   width: MediaQuery.of(context)
                                  //         //           .size
                                  //         //           .width *
                                  //         //       0.7,
                                  //         // ),
                                  //         SizedBox(
                                  //           width: MediaQuery.of(context)
                                  //                   .size
                                  //                   .width *
                                  //               0.5,
                                  //           child: Image.asset(
                                  //             "lana.PNG",
                                  //             //colorBlendMode: BlendMode.screen,
                                  //             //color: Color.fromARGB(25, 255, 255, 255),
                                  //             fit: BoxFit.cover,
                                  //             filterQuality:
                                  //                 FilterQuality.medium,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  // ),

                                  Positioned.fill(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          //Specify button
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                padding: EdgeInsets.all(20),
                                                width: 900,
                                                child: Container(
                                                  padding: EdgeInsets.all(20),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      // Column(
                                                      //   mainAxisSize:
                                                      //       MainAxisSize
                                                      //           .min,
                                                      //   children: [
                                                      //     Container(
                                                      //       padding: EdgeInsets
                                                      //           .only(
                                                      //               top:
                                                      //                   5),
                                                      //       child: Icon(
                                                      //         BuildNowIcons
                                                      //             .specifyicon,
                                                      //         size: 50,
                                                      //         color: Colors
                                                      //             .white,
                                                      //       ),
                                                      //     ),
                                                      //     Text(
                                                      //         "DISCUSS",
                                                      //         style:
                                                      //             subHeadingTextStyle),
                                                      //   ],
                                                      // ),
                                                      Container(
                                                        height: 200,
                                                        padding:
                                                            EdgeInsets.only(
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
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 10),
                                                          child: Text(
                                                            "Make it Tangible!\nFocused on taking your ideas from paper to product. I will ensure that you get a working product to ship to your current and future users.",
                                                            textAlign:
                                                                TextAlign.left,
                                                            style:
                                                                bodyTextStyle,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
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
                      ),

                      //Approach Container
                      Container(
                        color: Color.fromARGB(255, 36, 36, 36),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          height: null,
                          child: Stack(
                            children: [
                              Stack(
                                children: [
                                  // Container(
                                  //   padding: EdgeInsets.all(20),
                                  //   child: Divider(
                                  //     color:
                                  //         Color.fromARGB(255, 255, 255, 255),
                                  //     thickness: 0.5,
                                  //   ),
                                  // ),
                                  Positioned(
                                    //alignment: Alignment.centerLeft,
                                    top: 300,

                                    child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "MY\nAPPROACH",
                                            style: GoogleFonts.passionOne(
                                              color: backGroundTextColor,

                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.10,
                                              //overflow: TextOverflow.visible,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            ArrowIcons.arrowtest,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.10,
                                            color:
                                                Color.fromARGB(255, 255, 0, 0),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  // Align(
                                  //   alignment: Alignment.center,
                                  //   child: SingleChildScrollView(
                                  //     scrollDirection: Axis.horizontal,
                                  //     child: Row(
                                  //       children: [
                                  //         // Container(
                                  //         //   padding: EdgeInsets.all(20),
                                  //         //   height: 150,
                                  //         //   color: Color.fromARGB(
                                  //         //       140, 0, 140, 255),
                                  //         //   width: MediaQuery.of(context)
                                  //         //           .size
                                  //         //           .width *
                                  //         //       0.7,
                                  //         // ),
                                  //         SizedBox(
                                  //           width: MediaQuery.of(context)
                                  //                   .size
                                  //                   .width *
                                  //               0.5,
                                  //           child: Image.asset(
                                  //             "lana.PNG",
                                  //             //colorBlendMode: BlendMode.screen,
                                  //             //color: Color.fromARGB(25, 255, 255, 255),
                                  //             fit: BoxFit.cover,
                                  //             filterQuality:
                                  //                 FilterQuality.medium,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  // ),

                                  Positioned.fill(
                                    child: SingleChildScrollView(
                                      controller: _scrollController,
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          //Specify button
                                          AutoScrollTag(
                                            key: Key("ScrollDiscuss"),
                                            controller: _scrollController,
                                            index: Approach.discuss.index,
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  padding: EdgeInsets.all(20),
                                                  width: 900,
                                                  child: Container(
                                                    padding: EdgeInsets.all(20),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                              top: 5),
                                                                  child: Icon(
                                                                    CupertinoIcons
                                                                        .chat_bubble_2,
                                                                    size: 50,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                                Text("DISCUSS",
                                                                    style:
                                                                        subHeadingTextStyle),
                                                              ],
                                                            ),
                                                            Container(
                                                              height: 100,
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left: 30,
                                                                right: 30,
                                                              ),
                                                              child:
                                                                  VerticalDivider(
                                                                width: 20,
                                                                indent: 20,
                                                                endIndent: 0,
                                                                color: Colors
                                                                    .white,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            left:
                                                                                10),
                                                                    child: Text(
                                                                      "Let's get our brains warmed up. We will break down the problem, define it and out line possible solutions.",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style:
                                                                          bodyTextStyle,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            top:
                                                                                10),
                                                                    child: Wrap(
                                                                      children: [
                                                                        TagWidget(
                                                                            "Chat"),
                                                                        TagWidget(
                                                                            "Problem Definition"),
                                                                        TagWidget(
                                                                            "Solution Outline"),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 10),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              IconButton(
                                                                onPressed: () {
                                                                  _scrollController
                                                                      .scrollToIndex(Approach
                                                                          .plan
                                                                          .index);
                                                                },
                                                                iconSize: 30,
                                                                icon: Icon(
                                                                  Icons
                                                                      .arrow_circle_right_rounded,
                                                                  // color: Colors
                                                                  //     .white,
                                                                ),
                                                                color: Color
                                                                    .fromARGB(
                                                                        140,
                                                                        0,
                                                                        140,
                                                                        255),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          AutoScrollTag(
                                            key: Key("ScrollPlan"),
                                            controller: _scrollController,
                                            index: Approach.plan.index,
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  padding: EdgeInsets.all(20),
                                                  width: 900,
                                                  child: Container(
                                                    padding: EdgeInsets.all(20),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                              top: 5),
                                                                  child: Icon(
                                                                    CupertinoIcons
                                                                        .map,
                                                                    size: 50,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                                Text("PLAN",
                                                                    style:
                                                                        subHeadingTextStyle),
                                                              ],
                                                            ),
                                                            Container(
                                                              height: 100,
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left: 30,
                                                                right: 30,
                                                              ),
                                                              child:
                                                                  VerticalDivider(
                                                                width: 20,
                                                                indent: 20,
                                                                endIndent: 0,
                                                                color: Colors
                                                                    .white,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            left:
                                                                                10),
                                                                    child: Text(
                                                                      "Together with a UI/UX expert of your choice or mine, we will create wireframes and mockups of the choosen solution. This will help us estimate how long the project will take.",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style:
                                                                          bodyTextStyle,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            top:
                                                                                10),
                                                                    child: Wrap(
                                                                      children: [
                                                                        TagWidget(
                                                                            "WireFrames"),
                                                                        TagWidget(
                                                                            "UI Mockup"),
                                                                        TagWidget(
                                                                            "TimeLine"),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 10),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              IconButton(
                                                                onPressed: () {
                                                                  _scrollController
                                                                      .scrollToIndex(Approach
                                                                          .discuss
                                                                          .index);
                                                                },
                                                                iconSize: 30,
                                                                icon: Icon(
                                                                  Icons
                                                                      .arrow_circle_left_rounded,
                                                                  // color: Colors
                                                                  //     .white,
                                                                ),
                                                                color: Color
                                                                    .fromARGB(
                                                                        140,
                                                                        0,
                                                                        140,
                                                                        255),
                                                              ),
                                                              IconButton(
                                                                onPressed: () {
                                                                  _scrollController
                                                                      .scrollToIndex(Approach
                                                                          .build
                                                                          .index);
                                                                },
                                                                iconSize: 30,
                                                                icon: Icon(
                                                                  Icons
                                                                      .arrow_circle_right_rounded,
                                                                  // color: Colors
                                                                  //     .white,
                                                                ),
                                                                color: Color
                                                                    .fromARGB(
                                                                        140,
                                                                        0,
                                                                        140,
                                                                        255),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          AutoScrollTag(
                                            key: Key("Build"),
                                            controller: _scrollController,
                                            index: Approach.build.index,
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  padding: EdgeInsets.all(20),
                                                  width: 900,
                                                  child: Container(
                                                    padding: EdgeInsets.all(20),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                              top: 5),
                                                                  child: Icon(
                                                                    CupertinoIcons
                                                                        .gear,
                                                                    size: 50,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                                Text("BUILD",
                                                                    style:
                                                                        subHeadingTextStyle),
                                                              ],
                                                            ),
                                                            Container(
                                                              height: 100,
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left: 30,
                                                                right: 30,
                                                              ),
                                                              child:
                                                                  VerticalDivider(
                                                                width: 20,
                                                                indent: 20,
                                                                endIndent: 0,
                                                                color: Colors
                                                                    .white,
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            left:
                                                                                10),
                                                                    child: Text(
                                                                      "Let's put all our work into code. The development process begin. I will keep you updated based on the planned dates.",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style:
                                                                          bodyTextStyle,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            top:
                                                                                10),
                                                                    child: Wrap(
                                                                      children: [
                                                                        TagWidget(
                                                                            "Code Base"),
                                                                        TagWidget(
                                                                            "Finished Product"),
                                                                        TagWidget(
                                                                            "Champagne"),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 10),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              IconButton(
                                                                onPressed: () {
                                                                  _scrollController
                                                                      .scrollToIndex(Approach
                                                                          .plan
                                                                          .index);
                                                                },
                                                                iconSize: 30,
                                                                icon: Icon(
                                                                  Icons
                                                                      .arrow_circle_left_rounded,
                                                                  // color: Colors
                                                                  //     .white,
                                                                ),
                                                                color: Color
                                                                    .fromARGB(
                                                                        140,
                                                                        0,
                                                                        140,
                                                                        255),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
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
                      ),

                      //About
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
                                  // Container(
                                  //   padding: EdgeInsets.all(20),
                                  //   child: Divider(
                                  //     color:
                                  //         Color.fromARGB(255, 255, 255, 255),
                                  //     thickness: 0.5,
                                  //   ),
                                  // ),
                                  Positioned(
                                    //alignment: Alignment.centerLeft,
                                    top: 300,

                                    child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "ABOUT\nME",
                                            style: GoogleFonts.passionOne(
                                              color: backGroundTextColor,

                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.10,
                                              //overflow: TextOverflow.visible,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            CupertinoIcons.person_alt,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.10,
                                            color:
                                                Color.fromARGB(255, 255, 0, 0),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  // Align(
                                  //   alignment: Alignment.center,
                                  //   child: SingleChildScrollView(
                                  //     scrollDirection: Axis.horizontal,
                                  //     child: Row(
                                  //       children: [
                                  //         // Container(
                                  //         //   padding: EdgeInsets.all(20),
                                  //         //   height: 200,
                                  //         //   color: Color.fromARGB(
                                  //         //       140, 0, 140, 255),
                                  //         //   width: MediaQuery.of(context)
                                  //         //           .size
                                  //         //           .width *
                                  //         //       0.7,
                                  //         // ),
                                  //         SizedBox(
                                  //           width: MediaQuery.of(context)
                                  //                   .size
                                  //                   .width *
                                  //               0.5,
                                  //           child: Image.asset(
                                  //             "lana.PNG",
                                  //             //colorBlendMode: BlendMode.screen,
                                  //             //color: Color.fromARGB(25, 255, 255, 255),
                                  //             fit: BoxFit.cover,
                                  //             filterQuality:
                                  //                 FilterQuality.medium,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  // ),

                                  Positioned.fill(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                    padding: EdgeInsets.all(20),
                                                    width: 900,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: 200,
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 30,
                                                              right: 30,
                                                            ),
                                                            child:
                                                                VerticalDivider(
                                                              width: 20,
                                                              indent: 20,
                                                              endIndent: 0,
                                                              color:
                                                                  Colors.white,
                                                              thickness: 2,
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 10),
                                                              child: Text(
                                                                "As a child I have always been intrigued by technology and how things work. I can remember my first big purchase, a stack of “Growing up with Science” encyclopaedias. I was 9 at that time.\nSince my dreams to become a fighter pilot like my father has not come as early as I desired, I buried my head into learning other things like programming and human behaviour.",
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style:
                                                                    bodyTextStyle,
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
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                    padding: EdgeInsets.all(20),
                                                    width: 900,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: 200,
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 30,
                                                              right: 30,
                                                            ),
                                                            child:
                                                                VerticalDivider(
                                                              width: 20,
                                                              indent: 20,
                                                              endIndent: 0,
                                                              color:
                                                                  Colors.white,
                                                              thickness: 2,
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 10),
                                                              child: Text(
                                                                "Moved to the Netherlands to study Creative Technology. After my study, I worked as an embedded software engineer and application software developer. My stint as Software Developer exposed me to working in relatively large teams and collaborating with individuals of varying expertise",
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style:
                                                                    bodyTextStyle,
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
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                    padding: EdgeInsets.all(20),
                                                    width: 900,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: 200,
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 30,
                                                              right: 30,
                                                            ),
                                                            child:
                                                                VerticalDivider(
                                                              width: 20,
                                                              indent: 20,
                                                              endIndent: 0,
                                                              color:
                                                                  Colors.white,
                                                              thickness: 2,
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 10),
                                                              child: Text(
                                                                "Buildnow is my way of working with people to break down their problems and build a suitable solution for it in form of a mobile or web application.\n\nMy other interest include, motorsport, comics, animations, working out  and sketching. And, yeah, talking nonstop about cars and planes.",
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style:
                                                                    bodyTextStyle,
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      /**implement if necessary*/

      // floatingActionButton: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.arrow_circle_left_rounded,
      //       ),
      //       hoverColor: Colors.white,
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.arrow_circle_left_rounded,
      //         color: Colors.blue,
      //       ),
      //       hoverColor: Colors.white,
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.arrow_circle_left_rounded,
      //       ),
      //       hoverColor: Colors.white,
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.arrow_circle_left_rounded,
      //       ),
      //       hoverColor: Colors.white,
      //     ),
      //   ],
      //),
    );
  }
}
