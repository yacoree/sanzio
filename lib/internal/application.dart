import 'package:flutter/material.dart';
import '../l10n/locale_manager.dart';
import '../presentation/pages/home.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Sanzio Demo',
      locale: LocaleManager.locale,
      supportedLocales: LocaleManager.supportedLocales,
      localizationsDelegates: LocaleManager.localizationsDelegates,
      home: Home(),
    );
  }
}
