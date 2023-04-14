part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    //brightness: Brightness.dark,
    //scaffoldBackgroundColor: AppColors.lighterDark,
    scaffoldBackgroundColor: AppColors.black,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark,
      ThemeTextStyles.dark,
      Logo.dark,
    ],
    appBarTheme: AppBarTheme(
      color: AppColors.transparent,
      iconTheme: const IconThemeData(color: AppColors.white),
      elevation: 0.0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      titleTextStyle: headline1.copyWith(
        color: AppColors.grey,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.lightDark,
      titleTextStyle: headline1.copyWith(
        color: AppColors.darkestGrey,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      contentTextStyle: headline1.copyWith(
        color: AppColors.darkestGrey,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.lighterDark,
      textStyle: headline1.copyWith(
        color: AppColors.lighterGrey,
      ),
    ),
  );
}
