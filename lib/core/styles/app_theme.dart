import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme{

  static const Color primaryColor = Color(0xFF39A552);
  static const Color secondaryColor = Color(0xFFE91E63);
  static const Color rerendaryColor = Color(0xFFE91E63);

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(primary: primaryColor, seedColor: primaryColor),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      titleTextStyle: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400),
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        )
      )
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(color: Color(0xff4F5A69),fontSize: 22,fontWeight: FontWeight.w700),
      titleMedium: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),
      titleSmall: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),
      labelSmall: TextStyle(color: primaryColor , fontSize: 14 , fontWeight:FontWeight.w400,),
      bodySmall: TextStyle(color: Color(0xff79828B,),fontSize: 10 , fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(color: Color(0xff42505C,),fontSize: 14 , fontWeight: FontWeight.w500),

    ),
  );
}