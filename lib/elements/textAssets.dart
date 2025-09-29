import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cname extends StatelessWidget {
  FontWeight fontWeight;
  Color color;
  double fontSize;
  Cname({
    super.key,
    required this.fontWeight,
    required this.color,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'BURGER \n   HUNTER',
      style: GoogleFonts.bungee(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: 2,
        wordSpacing: 2,
        height: 1,
      ),
    );
  }
}

TextStyle text({
  required double fontSize,
  required FontWeight fontWeight,
  required Color color,
}) {
  return GoogleFonts.ptSerif(
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: color,
  );
}
