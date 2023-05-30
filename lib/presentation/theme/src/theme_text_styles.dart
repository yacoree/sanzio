part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle appTitle;
  final TextStyle title;
  final TextStyle appDescription;
  final TextStyle appAccent;
  final TextStyle labelStyle;
  final TextStyle searchHint;
  final TextStyle searchInput;
  final TextStyle settingsDialogLanguage;
  final TextStyle button;
  final TextStyle invertedButton;

  ThemeTextStyles({
    required this.appTitle,
    required this.title,
    required this.appDescription,
    required this.appAccent,
    required this.labelStyle,
    required this.searchHint,
    required this.searchInput,
    required this.settingsDialogLanguage,
    required this.button,
    required this.invertedButton,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? appBarTitle,
    TextStyle? appTitle,
    TextStyle? title,
    TextStyle? appDescription,
    TextStyle? appAccent,
    TextStyle? labelStyle,
    TextStyle? searchHint,
    TextStyle? searchInput,
    TextStyle? settingsDialogLanguage,
    TextStyle? button,
    TextStyle? invertedButton,
  }) {
    return ThemeTextStyles(
      appTitle: appTitle ?? this.appTitle,
      title: appTitle ?? this.title,
      appDescription: appDescription ?? this.appDescription,
      appAccent: appAccent ?? this.appAccent,
      labelStyle: labelStyle ?? this.labelStyle,
      searchHint: searchHint ?? this.searchHint,
      searchInput: searchInput ?? this.searchInput,
      settingsDialogLanguage:
          settingsDialogLanguage ?? this.settingsDialogLanguage,
      button: button ?? this.button,
      invertedButton: invertedButton ?? this.invertedButton,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      appTitle: TextStyle.lerp(appTitle, other.appTitle, t)!,
      title: TextStyle.lerp(appTitle, other.appTitle, t)!,
      appDescription: TextStyle.lerp(appDescription, other.appDescription, t)!,
      appAccent: TextStyle.lerp(appDescription, other.appDescription, t)!,
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t)!,
      searchHint: TextStyle.lerp(searchHint, other.searchHint, t)!,
      searchInput: TextStyle.lerp(searchInput, other.searchInput, t)!,
      settingsDialogLanguage: TextStyle.lerp(
          settingsDialogLanguage, other.settingsDialogLanguage, t)!,
      button: TextStyle.lerp(searchInput, other.searchInput, t)!,
      invertedButton: TextStyle.lerp(searchInput, other.searchInput, t)!,
    );
  }

  static get light => ThemeTextStyles(
        appTitle: headline0.copyWith(
          color: AppColors.black,
        ),
        title: headline1.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w700,
        ),
        appDescription: headline2.copyWith(
          color: AppColors.darkerGrey,
          fontWeight: FontWeight.w500,
        ),
        appAccent: headline2.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: headline2.copyWith(
          fontWeight: FontWeight.w500,
        ),
        searchHint: headline2.copyWith(
          color: AppColors.white,
          fontSize: 18,
        ),
        searchInput: headline2.copyWith(
          fontSize: 18,
        ),
        settingsDialogLanguage: headline2.copyWith(
          color: AppColors.black,
        ),
        button: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
        invertedButton: headline2.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.bold,
        ),
      );

  static get dark => ThemeTextStyles(
        appTitle: headline0.copyWith(
          color: AppColors.white,
        ),
        title: headline1.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        appDescription: headline3.copyWith(
          color: AppColors.lightGrey,
          fontWeight: FontWeight.w500,
        ),
        appAccent: headline3.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: headline2.copyWith(
          fontWeight: FontWeight.w500,
        ),
        searchHint: headline2.copyWith(
          color: AppColors.lighterGrey,
          fontSize: 18,
        ),
        searchInput: headline2.copyWith(
          fontSize: 18,
          color: AppColors.grey,
        ),
        settingsDialogLanguage: headline2.copyWith(
          color: AppColors.grey,
        ),
        button: headline2.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.bold,
        ),
        invertedButton: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      );
}
