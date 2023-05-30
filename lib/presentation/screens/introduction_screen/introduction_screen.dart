import 'package:flutter/material.dart';

import 'components/body.dart';

class IntroductionScreen extends StatelessWidget {
  static String routeName = "/introductionScreen";

  const IntroductionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
