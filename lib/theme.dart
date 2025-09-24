import 'package:flutter/material.dart';

//https://docs.flutter.dev/cookbook/design/themes
//https://www.geeksforgeeks.org/flutter/flutter-themes/#
//https://medium.com/@kanellopoulos.leo/a-simple-way-to-organize-your-styles-themes-in-flutter-a0e7eba5b297

class SchoolTheme {
  static Color primaryColor = Color(0xffF6917B); //Sunset
  static Color secondaryColor = Color(0xff0073BC); // Blue


static TextTheme textTheme()
{
  return TextTheme(
    titleLarge: TextStyle(fontFamily: "Merriweather", fontSize: 20 )
  );
}

}
