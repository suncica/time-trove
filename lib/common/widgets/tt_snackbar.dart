import 'package:flutter/material.dart';

showSimpleSnackBar(BuildContext context, String text,
    {String? content,
    SnackBarBehavior barBehavior = SnackBarBehavior.floating,
    SnackBarAction? action}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    behavior: barBehavior,
    action: action,
  ));
}
