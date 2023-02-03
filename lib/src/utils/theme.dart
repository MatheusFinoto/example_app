import 'package:flutter/material.dart';

int formatColor({var path}) {
  return int.parse(path.replaceAll('#', '0xff'));
}

final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor:
        Color(formatColor(path: darkColors["background"]["body"])),
    cardColor: Color(formatColor(path: darkColors["background"]["card"])),
    iconTheme: const IconThemeData(
      color: Colors.white70,
    ),
    primaryColor:
        Color(formatColor(path: darkColors["allThentic"]["green"][800])),
    primaryColorLight:
        Color(formatColor(path: darkColors["allThentic"]["green"][800])),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white70),
      bodyMedium: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
      bodyLarge: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      headlineSmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: TextStyle(
          fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
      headlineLarge: TextStyle(
          fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
    ));

final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor:
        Color(formatColor(path: lightColors["background"]["body"])),
    cardColor: Color(formatColor(path: lightColors["allThentic"]["white"][0])),
    iconTheme: const IconThemeData(
      color: Colors.black54,
    ),
    primaryColor:
        Color(formatColor(path: lightColors["allThentic"]["green"][800])),
    primaryColorLight:
        Color(formatColor(path: darkColors["allThentic"]["green"][800])),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black45),
      bodyMedium: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black54),
      bodyLarge: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
      headlineSmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54),
      headlineMedium: TextStyle(
          fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black54),
      headlineLarge: TextStyle(
          fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black54),
    ));

const Map darkColors = {
  "allThentic": {
    "blue": {
      800: '#090C26',
      700: '#1A1D3E',
      600: '#131738',
      500: '#191C3C',
      400: '#2B3062',
      300: '#29158D',
      200: '#230E96',
      2008: '#220E96E6',
    },
    "lightBlue": {
      "one": '#00AEFF',
    },
    "cyan": {
      500: '#4BC0C0',
      5002: '#4BC0C033',
    },
    "purple": {
      500: '#382276',
      300: '#6537C4',
    },
    "pink": {
      700: '#742774',
    },
    "green": {
      600: '#4B9F1E',
      500: '#2A962A',
      450: '#64BA2A',
      400: '#46B015',
      4008: '#46b015CC',
      200: '#73CC6F',
      300: '#71C96E',
      800: '#448b6c',
    },
    "red": {
      600: '#DB3026',
      500: '#BB2525',
      450: '#FF5035',
      400: '#E51111',
    },
    "black": {
      5006: '#00000099',
      500: '#000000',
      100: '#373737',
    },
    "gray": {
      500: '#C4C4C4',
    },
    "yellow": {
      500: '#FFF500',
    },
    "white": {
      09: '#FFFFFFE6',
      0: '#FFFFFF',
      50: '#F8F8F8',
      501: '#F8F8F81A',
      502: '#F8F8F833',
      505: '#F8F8F880',
      506: '#F8F8F899',
      508: '#F8F8F8CC',
      509: '#F8F8F8E6',
      300: '#F7F7F7',
      200: '#2D3748',
      400: '#c3c3c3',
      500: '#a0a0a0',
      5005: '#e0e0e0',
    },
  },
  "shadow": {
    "card": 'box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.25);',
  },
  "background": {
    "body": '#0E142F',
    "card": '#121A3A',
    "icon": '#1D2544',
  },
  "blue": {
    1: ' rgb(134, 140, 255) ',
  },
  "gradient": {
    "clickableBox":
        'linear-gradient(240.65deg, #0E142F 21.09%, #2C7D78 127.41%);',
    "clickableBoxLight":
        'linear-gradient(240.65deg, #2F855A 21.09%, #2C7D78 127.41%);',
    "greenAndBlue":
        'linear-gradient(256.76deg, #272954 10.94%, #32356D 64.06%, #5EA698 100%);',
  }
};

const Map lightColors = {
  "allThentic": {
    "blue": {
      800: '#090C26',
      700: '#1A1D3E',
      600: '#131738',
      500: '#191C3C',
      400: '#2B3062',
      300: '#29158D',
      200: '#230E96',
      2008: '#220E96E6',
    },
    "lightBlue": {
      "one": '#00AEFF',
    },
    "cyan": {
      500: '#4BC0C0',
      5002: '#4BC0C033',
    },
    "purple": {
      500: '#382276',
      300: '#6537C4',
    },
    "pink": {
      700: '#742774',
    },
    "green": {
      600: '#4B9F1E',
      500: '#2A962A',
      450: '#64BA2A',
      400: '#46B015',
      4008: '#46b015CC',
      200: '#73CC6F',
      300: '#71C96E',
      800: '#448b6c',
    },
    "red": {
      600: '#DB3026',
      500: '#BB2525',
      450: '#FF5035',
      400: '#E51111',
    },
    "black": {
      5006: '#00000099',
      500: '#000000',
      100: '#373737',
    },
    "gray": {
      500: '#C4C4C4',
    },
    "yellow": {
      500: '#FFF500',
    },
    "white": {
      09: '#FFFFFFE6',
      0: '#FFFFFF',
      50: '#F8F8F8',
      501: '#F8F8F81A',
      502: '#F8F8F833',
      505: '#F8F8F880',
      506: '#F8F8F899',
      508: '#F8F8F8CC',
      509: '#F8F8F8E6',
      300: '#F7F7F7',
      200: '#2D3748',
    },
  },
  "shadow": {
    "card": 'box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.25);',
  },
  "background": {
    "body": '#f0f4f8',
    "card": '#121A3A',
    "icon": '#1D2544',
  },
  "blue": {
    1: ' rgb(134, 140, 255) ',
  },
  "gradient": {
    "clickableBox":
        'linear-gradient(135deg, rgb(134, 140, 255) 0%, rgb(67, 24, 255) 100%);',
    "greenAndBlue":
        'linear-gradient(256.76deg, #272954 10.94%, #32356D 64.06%, #5EA698 100%);',
  },
};
