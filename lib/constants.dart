import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle bodyTextStyle = GoogleFonts.montserrat(
    color: Colors.white, fontWeight: FontWeight.w200, fontSize: 20);
TextStyle headerTextStyle = TextStyle();
TextStyle subHeadingTextStyle = GoogleFonts.montserrat(
  color: Colors.white,

  fontWeight: FontWeight.bold,
  fontSize: 40,
  //overflow: TextOverflow.visible,
);

ButtonStyle actionButtonStyle = ElevatedButton.styleFrom(
  elevation: 10,
  primary: Color.fromARGB(140, 0, 140, 255),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  minimumSize: Size(200, 50),
);

//Color mainColor = Colors

enum ImagePosition {
  top,
  center,
  bottom,
}