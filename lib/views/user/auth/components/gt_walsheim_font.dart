// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GtFont extends StatelessWidget {
  String text;
  double fontsize;
  Color color;
  FontWeight fontWeight;
  GtFont({
    super.key,
    required this.text,
    required this.fontsize,
    required this.color,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(fontSize: fontsize, color: color , fontWeight: fontWeight),
    );
  }
}
