// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Heading extends StatelessWidget {
  String text;
  double fontsize;
  Color color;
  Heading({
    super.key,
    required this.text,
    required this.fontsize,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.aoboshiOne(fontSize: fontsize, color: color),
    );
  }
}
