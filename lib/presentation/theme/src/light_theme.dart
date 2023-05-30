part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    primaryColor: AppColors.black,
    scaffoldBackgroundColor: AppColors.white,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light,
      ThemeTextStyles.light,
      Logo.light,
    ],
    appBarTheme: AppBarTheme(
      color: AppColors.white,
      iconTheme: const IconThemeData(color: AppColors.black),
      titleTextStyle: headline1.copyWith(
        color: AppColors.grey,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      elevation: 0.0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      //shadowColor: Colors.transparent,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.white,
      titleTextStyle: headline1.copyWith(
        color: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      contentTextStyle: headline1.copyWith(
        color: AppColors.black,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.white,
      textStyle: headline1.copyWith(
        color: AppColors.black,
      ),
    ),
  );
}
