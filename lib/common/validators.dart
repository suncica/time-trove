import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Validators {
  static const int _passwordMinLength = 8;
  // reg exp patterns
  static final _passwordPolicyRegExp =
      RegExp(r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])');

  static final _emailRegExp = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
  );
  
  static String? validateEmptyString(
      {String? itemName, String? string, required BuildContext context}) {
    if (string == null || string.isEmpty) {
      return AppLocalizations.of(context)?.error_mandatory_field ?? '';
    }
    return null;
  }

  static String? validateEmail({String? email, required BuildContext context}) {
    if (email == null || email.isEmpty) {
      return AppLocalizations.of(context)?.error_empty_email ??
          'Unknown error';
    }

    if (!_emailRegExp.hasMatch(email)) {
      return AppLocalizations.of(context)?.error_incorrect_email_format ??
          'Unknown error';
    }

    return null;
  }

  static String? validatePassword(
      {String? password, required BuildContext context}) {
    if (password == null || password.isEmpty) {
      return AppLocalizations.of(context)?.error_empty_password ??
          'Unknown error';
    }
    if (password.length < _passwordMinLength ||
        !password.contains(_passwordPolicyRegExp)) {
      return AppLocalizations.of(context)?.error_incorrect_password ??
          'Unknown error';
    }

    return null;
  }
}
