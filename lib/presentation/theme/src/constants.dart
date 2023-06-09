part of '../theme.dart';

const headline0 = TextStyle(fontWeight: FontWeight.bold, fontSize: 36);
const headline1 = TextStyle(fontWeight: FontWeight.w700, fontSize: 32);
const headline2 = TextStyle(fontWeight: FontWeight.w400, fontSize: 18);
const headline3 = TextStyle(fontWeight: FontWeight.w400, fontSize: 16);
const headline4 = TextStyle(fontWeight: FontWeight.w400, fontSize: 14);

const String logoDark = "assets/images/sanzio_logo_dark.png";
const String logoLight = "assets/images/sanzio_logo_light.png";

abstract class AppColors {
  static const transparent = Colors.transparent;

  static const white = Colors.white;
  static const black = Colors.black;
  static const grey = Colors.grey;
  static const pink = Colors.pink;
  static const red = Colors.red;

  static const lightPink = Color(0xFFFF4848);

  static const darkerGrey = Color(0xFF6C6C6C);
  static const darkestGrey = Color(0xFF626262);
  static const lighterGrey = Color(0xFF959595);
  static const lightGrey = Color(0xFF5d5d5d);

  static const lighterDark = Color(0xFF272727);
  static const lightDark = Color(0xFF1b1b1b);
}
