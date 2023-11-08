import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:time_trove_app/common/constants/app_constants.dart';
import 'package:time_trove_app/common/networking/api_error_handler.dart';

class ErrorMapper {
  static String localizedErrorDescription(
      BuildContext context, TTException exception) {
    var localizedErrorMessage = '';

    final appLocalizations = AppLocalizations.of(context);

   if (exception is UserAlreadyExistException) {
      localizedErrorMessage = appLocalizations?.error_registration_conflict ??
          AppConstants.unknownError;
    } else if (exception is AuthorizationException) {
      localizedErrorMessage =
          appLocalizations?.error_wrong_credentials ?? AppConstants.unknownError;
    } else if (exception is NoInternetException) {
      localizedErrorMessage =
          AppLocalizations.of(context)?.error_no_internet_connection ??
              AppConstants.unknownError;
    } else {
      localizedErrorMessage =
          appLocalizations?.error_general ?? AppConstants.unknownError;
    }

    return localizedErrorMessage;
  }
}
