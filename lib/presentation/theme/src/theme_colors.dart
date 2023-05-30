part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color appContainerBackground;
  final Color appBackground;
  final Color appLink;
  final Color appAccent;
  final Color appSearch;
  final Color appContainerShadow;
  final Color selectedLabel;
  final Color unselectedLabel;
  final Color coursorColor;
  final Color micIcon;
  final Color settingsDialogLanguage;
  final Color button;
  final Color activeDotList;
  final Color inactiveDotList;

  const ThemeColors({
    required this.appContainerBackground,
    required this.appAccent,
    required this.appSearch,
    required this.appBackground,
    required this.appLink,
    required this.appContainerShadow,
    required this.selectedLabel,
    required this.unselectedLabel,
    required this.coursorColor,
    required this.micIcon,
    required this.settingsDialogLanguage,
    required this.button,
    required this.activeDotList,
    required this.inactiveDotList,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? appContainerBackground,
    Color? appAccent,
    Color? appSearch,
    Color? appBackground,
    Color? appLink,
    Color? appContainerShadow,
    Color? selectedLabel,
    Color? unselectedLabel,
    Color? coursorColor,
    Color? micIcon,
    Color? settingsDialogLanguage,
    Color? button,
    Color? activeDotList,
    Color? inactiveDotList,
  }) {
    return ThemeColors(
      appContainerBackground:
          appContainerBackground ?? this.appContainerBackground,
      appAccent: appAccent ?? this.appAccent,
      appSearch: appSearch ?? this.appSearch,
      appBackground: appBackground ?? this.appBackground,
      appLink: appLink ?? this.appLink,
      appContainerShadow: appContainerShadow ?? this.appContainerShadow,
      selectedLabel: selectedLabel ?? this.selectedLabel,
      unselectedLabel: unselectedLabel ?? this.unselectedLabel,
      coursorColor: coursorColor ?? this.coursorColor,
      micIcon: micIcon ?? this.micIcon,
      settingsDialogLanguage:
          settingsDialogLanguage ?? this.settingsDialogLanguage,
      button: button ?? this.button,
      activeDotList: activeDotList ?? this.activeDotList,
      inactiveDotList: inactiveDotList ?? this.inactiveDotList,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      appContainerBackground:
          Color.lerp(appContainerBackground, other.appContainerBackground, t)!,
      appAccent: Color.lerp(appAccent, other.appAccent, t)!,
      appSearch: Color.lerp(appSearch, other.appSearch, t)!,
      appBackground: Color.lerp(appBackground, other.appBackground, t)!,
      appLink: Color.lerp(appLink, other.appLink, t)!,
      appContainerShadow:
          Color.lerp(appContainerShadow, other.appContainerShadow, t)!,
      selectedLabel: Color.lerp(selectedLabel, other.selectedLabel, t)!,
      unselectedLabel: Color.lerp(unselectedLabel, other.unselectedLabel, t)!,
      coursorColor: Color.lerp(coursorColor, other.coursorColor, t)!,
      micIcon: Color.lerp(micIcon, other.micIcon, t)!,
      settingsDialogLanguage:
          Color.lerp(settingsDialogLanguage, other.settingsDialogLanguage, t)!,
      button: Color.lerp(button, other.button, t)!,
      activeDotList: Color.lerp(activeDotList, other.activeDotList, t)!,
      inactiveDotList: Color.lerp(inactiveDotList, other.inactiveDotList, t)!,
    );
  }

  static get light => ThemeColors(
        appContainerBackground: AppColors.white,
        appBackground: AppColors.white,
        appLink: AppColors.black,
        appAccent: AppColors.black,
        appSearch: AppColors.darkerGrey,
        appContainerShadow: AppColors.grey.withOpacity(0.5),
        selectedLabel: AppColors.darkestGrey,
        unselectedLabel: AppColors.darkestGrey.withOpacity(0.7),
        coursorColor: AppColors.black,
        micIcon: AppColors.lightGrey,
        settingsDialogLanguage: AppColors.white,
        button: AppColors.black,
        activeDotList: AppColors.black,
        inactiveDotList: AppColors.grey,
      );

  static get dark => ThemeColors(
        appContainerBackground: AppColors.lightDark,
        appBackground: AppColors.black,
        appLink: AppColors.white,
        appAccent: AppColors.white,
        appSearch: AppColors.white,
        appContainerShadow: AppColors.darkerGrey.withOpacity(0.2),
        selectedLabel: AppColors.darkestGrey,
        unselectedLabel: AppColors.darkestGrey.withOpacity(0.7),
        coursorColor: AppColors.white,
        micIcon: AppColors.lightGrey,
        settingsDialogLanguage: AppColors.lighterDark,
        button: AppColors.white,
        activeDotList: AppColors.white,
        inactiveDotList: AppColors.darkestGrey,
      );
}
