import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sabitler {
  static const anaRenk = Colors.indigo;

  static const String baslik = "Ortalama Hesapla";

  static final TextStyle baslikStyle = GoogleFonts.quicksand(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: anaRenk,
  );

  static BorderRadius borderGenel = BorderRadius.circular(16);

  static final TextStyle ortalamaGosterBodyStyle = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: anaRenk,
  );

  static final TextStyle ortalamaStyle = GoogleFonts.quicksand(
    fontSize: 57,
    fontWeight: FontWeight.w800,
    color: anaRenk,
  );

  static final EdgeInsets dropDownPadding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 8,
  );

  static final EdgeInsets yatayPaddingSekiz =
      EdgeInsets.symmetric(horizontal: 8);
}