import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get kTextStyle{
  return GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Color(0xff1D232B),
    )
  );
}

TextStyle get kMainTextStyle{
  return GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Color(0xff313B49),
    )
  );
}


TextStyle get kLightTextStyle{
  return GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xff919EB6),
    )
  );
}


TextStyle get kHashtagTextStyle{
  return GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Color(0xff5A6B87),
    )
  );
}

