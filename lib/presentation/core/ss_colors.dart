import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class SSColors {
  Color get primary =>  Colors.lightBlueAccent[100];
  Color get secondary => Colors.orangeAccent;
  Color get tertiary => Colors.lightGreen;
  Color get background => Colors.lightGreen[50];
  // Color get onPrimary => offWhite1;
  // Color get onPrimaryLight => grayDark1;

  //Sea blue
  // Color get secondary => const Color(0xFF7ED3C2);
  // Color get secondaryDark1 => const Color(0xFF19AF99);
  // Color get secondaryDark2 => const Color(0xFF51AC9A);
  // Color get onSecondary => offWhite1;

  // Color get blue => const Color(0xFF0659FD);
  // Color get facebookBlue => Color(0xFF3B5998);
  // Color get black => Color(0xFF000000);

  // Color get offWhite1 => Color(0xFFF3EFED);
  // Color get offWhite2 => Color(0xFFDFDBD9);
  // Color get white => Color(0xFFFFFFFF);

  // Color get gray => Color(0xFF8D8C8C);
  // Color get grayLight1 => Color(0xFFBFBDBD);
  // Color get grayDark1 => Color(0xFF1C1A1A);

  // //Full Opacity
  // Color get fullOpacity => Color(0xFF737373);
}
