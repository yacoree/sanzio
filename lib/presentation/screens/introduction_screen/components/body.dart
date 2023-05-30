import 'package:flutter/material.dart';
import 'package:sanzio/presentation/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../components/button.dart';
import '../../sign_in/sign_in.dart';
import '../../sign_up/sign_up.dart';
import 'introduction__screen_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                controller: PageController(initialPage: currentPage),
                itemCount: splashData.length,
                itemBuilder: (context, index) => IntroductionScreenContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              //child: Padding(
              // padding: EdgeInsets.symmetric(
              //     horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  const Spacer(flex: 3),
                  MyButton(
                    text: AppLocalizations.of(context)!.sign_in,
                    onTap: () {
                      setState(() {
                        // if (splashData.length != currentPage) {
                        //   currentPage++;
                        //   return;
                        // }
                        Navigator.pushReplacementNamed(
                            context, SignInScreen.routeName);
                      });
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Theme.of(context).extension<ThemeColors>()!.activeDotList
            : Theme.of(context).extension<ThemeColors>()!.inactiveDotList,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  //PageView buildImageList({int? currentPage}) {}
}
