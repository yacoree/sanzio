import 'package:flutter/material.dart';

import '../theme/theme.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String ihintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.ihintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: Theme.of(context).extension<ThemeColors>()!.coursorColor,
        style: Theme.of(context).extension<ThemeTextStyles>()!.appDescription,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          filled: true,
          fillColor: Theme.of(context)
              .extension<ThemeColors>()!
              .appContainerBackground,
          hintText: ihintText,
          //helperText: ihintText,
          hintStyle:
              Theme.of(context).extension<ThemeTextStyles>()!.appDescription,
        ),
      ),
    );
  }
}
