import 'package:flutter/material.dart';

final List<BoxShadow> boxShadow = <BoxShadow>[
  BoxShadow(
    color: Color.fromRGBO(69, 91, 99, 0.08),
    offset: Offset(0, 4),
    blurRadius: 16,
  )
];
//ALL COLORS
final cWhite = Color(0xFFFFFFFF);
final cBlack = Color(0xFF000000);
final cBackgroundGrey = Color(0xFFF5F4F4);
final cGrey2 = Color(0xFFF7F7FA);
final cLightGrey = Color(0xFF959DAD);
final cLightBlue = Color(0xFF4DB8F0);
final cMediumBlue = Color(0xFF3497FD);
final cMediumGrey = Color(0xFF78849E);
final cDarkGrey = Color(0xFF555869);
final alternateColor = Color(0xFF454F63);
//final cWhite = Color(0xFFFFFFFF);

final defaultTextStyle = TextStyle(
  fontFamily: "Compact Display",
  fontWeight: FontWeight.w500,
  fontSize: 15,
  color: cMediumGrey
);
