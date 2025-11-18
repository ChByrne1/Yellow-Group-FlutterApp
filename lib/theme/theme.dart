import 'package:flutter/material.dart';

//https://docs.flutter.dev/cookbook/design/themes
//https://www.geeksforgeeks.org/flutter/flutter-themes/#
//https://medium.com/@kanellopoulos.leo/a-simple-way-to-organize-your-styles-themes-in-flutter-a0e7eba5b297

//To Use Theme:
//Import on the page with - import 'theme.dart';
//In the intial build use - theme: pageSetup
//when specifying a text use - Theme.of(context).textTheme.bodyMedium
//Will add more when getting more into the application

class SchoolTheme {
  //Colors
  static Color optionalColor = Color(0xffF6917B); //Sunset
  static Color primaryColor = Color(0xff7C8B62); //Hemlock
  static Color secondaryColor = Color(0xff0073BC); // Blue

  static ColorScheme pageTheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    secondary: secondaryColor,
    tertiary: optionalColor,
    primaryContainer: Colors.white,
    secondaryContainer: Colors.black,
  );

  static TextTheme textTheme() {
    return TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Merriweather",
        fontWeight: FontWeight.w800,
        fontSize: 40,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontFamily: "Merriweather",
        fontWeight: FontWeight.w600,
        fontSize: 30,
      ),
      bodyMedium: TextStyle(
        fontFamily: "AverageSans",
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        fontFamily: "AverageSans",
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
    );
  }

  static ThemeData pageSetup() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.black,
        titleTextStyle: textTheme().titleLarge,
      ),
      navigationBarTheme: NavigationBarThemeData(backgroundColor: primaryColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        selectedItemColor: optionalColor,
        unselectedItemColor: secondaryColor,
        showUnselectedLabels: true,
        selectedLabelStyle: textTheme().bodySmall,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        splashColor: secondaryColor,
        focusColor: optionalColor,
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: primaryColor,
        shadowColor: Colors.black,
      ),
      expansionTileTheme: ExpansionTileThemeData(
        backgroundColor: primaryColor,
        iconColor: Colors.white,
        textColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Colors.black, width: 3)),
        collapsedTextColor: Colors.black,
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: primaryColor, width: 3),
        ),
        collapsedBackgroundColor: Colors.white,
      ),
      /* elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: secondaryColor,
              shadowColor: optionalColor)*/
      //)
    );
  }

  static ThemeData secondarySetup() {
    return ThemeData(
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: secondaryColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(

                backgroundColor: Colors.red,
                shadowColor: Colors.amber

        )
      )
    );
  }
}
