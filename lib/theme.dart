
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * Deklarasi konstan tampilan UI, 
 * mengatur layouting, warna, font, dsb.
 */

// set margin and padding
double defaultMargin = 30.0;
double defaultPadding = 20.0;

// set color
Color navyColor = Color(0xff39004B);
Color redColor = Color(0xffFF686D);
Color yellowColor = Color(0xffFFE8AD);
Color whiteColor = Color(0xffFFFFFF);
Color greyColor = Color(0xffA1A1A1);
Color blackColor = Color(0xff111111);

// set style fonts
TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: navyColor
);
TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: greyColor
);
TextStyle thirdTextStyle = GoogleFonts.poppins(
  color: blackColor
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor
);

// set weight of fonts
FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;