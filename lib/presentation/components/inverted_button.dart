import 'package:flutter/material.dart';

import '../theme/theme.dart';

class MyInvertedButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyInvertedButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Theme.of(context).extension<ThemeColors>()!.button,
            )),
        child: Center(
          child: Text(
            text,
            style:
                Theme.of(context).extension<ThemeTextStyles>()!.invertedButton,
          ),
        ),
      ),
    );
  }
}
