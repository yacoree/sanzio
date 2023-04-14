import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../l10n/locale_manager.dart';
import '../presentation/pages/home.dart';
import '../presentation/pages/login_page.dart';
import '../presentation/theme/theme.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Sanzio Demo',
      theme: createLightTheme(),
      darkTheme: createDarkTheme(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      locale: LocaleManager.locale,
      supportedLocales: LocaleManager.supportedLocales,
      localizationsDelegates: LocaleManager.localizationsDelegates,
      home: LoginPage(),
    );
  }
}
