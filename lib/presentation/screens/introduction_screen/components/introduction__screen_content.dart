import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../size_config.dart';
import '../../../theme/theme.dart';

class IntroductionScreenContent extends StatelessWidget {
  const IntroductionScreenContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(AppLocalizations.of(context)!.appname,
            style: Theme.of(context)
                .extension<ThemeTextStyles>()!
                .appTitle
                .copyWith(
                  fontSize: getProportionateScreenWidth(36),
                )),
        Text(
          text!,
          style: Theme.of(context).extension<ThemeTextStyles>()!.appDescription,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
