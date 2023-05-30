import 'package:flutter/material.dart';

import '../theme/theme.dart';

class MyPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String ihintText;
  final String? Function(String?)? validator;

  MyPasswordField(
      {super.key,
      required this.controller,
      required this.ihintText,
      this.validator});

  @override
  State<StatefulWidget> createState() => PassordFieldState();
}

class PassordFieldState extends State<MyPasswordField> {
  bool obscureText = true;
  FocusNode? focusNode;
  String? errorMessage;
  @override
  void initState() {
    super.initState();
    if (widget.validator == null) return;

    focusNode = FocusNode();
    focusNode!.addListener(() {
      if (!focusNode!.hasFocus) {
        setState(() {
          errorMessage = widget.validator!.call(widget.controller.text);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        focusNode: focusNode,
        validator: widget.validator,
        controller: widget.controller,
        obscureText: obscureText,
        cursorColor: Theme.of(context).extension<ThemeColors>()!.coursorColor,
        style: Theme.of(context).extension<ThemeTextStyles>()!.appDescription,
        decoration: InputDecoration(
          errorText: errorMessage,
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(15))),
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
          hintText: widget.ihintText,
          //helperText: ihintText,
          hintStyle:
              Theme.of(context).extension<ThemeTextStyles>()!.appDescription,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: Icon(
              obscureText == true ? Icons.visibility : Icons.visibility_off,
              color: Theme.of(context)
                  .extension<ThemeTextStyles>()!
                  .appDescription
                  .color,
            ),
          ),
        ),
      ),
    );
  }
}
