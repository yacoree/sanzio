import 'package:flutter/material.dart';
import 'package:sanzio/presentation/screens/sign_in/sign_in.dart';
import '../helper/helper_function.dart';
import '../l10n/locale_manager.dart';
import '../presentation/routes.dart';
import '../presentation/screens/home_screen/home_screen.dart';
import '../presentation/screens/introduction_screen/introduction_screen.dart';
import '../presentation/theme/theme.dart';
import '../presentation/size_config.dart';

class Application extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  bool _isSignedIn = false;

  @override
  void initState() {
    getUserLoggedInStatus();
    super.initState();
  }

  getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      title: 'Sanzio Demo',
      theme: createLightTheme(),
      darkTheme: createDarkTheme(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      locale: LocaleManager.locale,
      supportedLocales: LocaleManager.supportedLocales,
      localizationsDelegates: LocaleManager.localizationsDelegates,
      home: _isSignedIn ? HomeScreen() : IntroductionScreen(),
      //initialRoute: ,
      routes: routes,
    );
  }
}
