import 'package:flutter/material.dart';

class MyTextStyles {
  // Example of text styles
  static const TextStyle bodyText = TextStyle(
    fontSize: 16.0,
  );
  static const TextStyle font24extraBold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle font14semiBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xFFA8A8A9),
  );
  static const TextStyle font18semiBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  // Example of custom fonts
  static const String customFontFamily = 'CustomFont';

  static const TextStyle customFontStyle = TextStyle(
    fontFamily: customFontFamily,
    fontSize: 20.0,
  );
}
//if you wanna add some fetcher to your text you can use ("copywith()")
