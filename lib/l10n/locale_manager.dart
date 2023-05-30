import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocaleManager {
  static Locale? _locale;
  static Function? _setLocale;

  static Locale? get locale => _locale;

  static Iterable<Locale> get supportedLocales =>
      AppLocalizations.supportedLocales;

  static Iterable<LocalizationsDelegate<dynamic>>? get localizationsDelegates =>
      AppLocalizations.localizationsDelegates;

  static bool isSupported(Locale locale) =>
      AppLocalizations.delegate.isSupported(locale);

  static void setSetLocaleFunction(Function setLocale) {
    _setLocale = setLocale;
  }

  static void setLocale(Locale locale) {
    if (!isSupported(locale)) return;
    _locale = locale;
    print("change locale on " + locale.languageCode);
  }
}
