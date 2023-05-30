import 'package:flutter/material.dart';

import 'screens/details/details_screen.dart';
import 'screens/sign_in/sign_in.dart';
import 'screens/introduction_screen/introduction_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/sign_up/sign_up.dart';

final Map<String, WidgetBuilder> routes = {
  IntroductionScreen.routeName: (context) => const IntroductionScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  //ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  //LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  //OtpScreen.routeName: (context) => OtpScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  //CartScreen.routeName: (context) => CartScreen(),
  //ProfileScreen.routeName: (context) => ProfileScreen(),
};
