import 'package:flutter/material.dart';

void showSnackbar(
    {required context,
    required Color color,
    required Color textColor,
    required message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {},
        textColor: textColor,
      ),
    ),
  );
}
