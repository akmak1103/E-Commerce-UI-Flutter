import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'splashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: SplashScreen(),
    )
  );
}
