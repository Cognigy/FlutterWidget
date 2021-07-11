import 'package:flutter/material.dart';

/// Global application themes.

ThemeData theme = ThemeData(
  backgroundColor: Colors.white,
  // Define the default brightness and colors.
  brightness: Brightness.light,
  // bot message bubble color
  primaryColor: Color(0XFF0B3694),
  // user message bubble color
  accentColor: Colors.grey[100],
  // Define the default font family.
  fontFamily: 'Muli',
  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.white),
    subtitle2: TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    bodyText2:
        TextStyle(fontSize: 16.0, fontFamily: 'Muli', color: Colors.white),
  ),
);
