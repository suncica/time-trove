import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:time_trove_app/app/home/main_manu_page.dart';
import 'package:time_trove_app/app/log_in/bloc/log_in_state.dart';
import 'package:time_trove_app/app/log_in/bloc/log_in_cubit.dart';
import 'package:time_trove_app/app/sign_up/sign_up_page.dart';
import 'package:time_trove_app/common/colors/colors.dart';
import 'package:time_trove_app/common/constants/time_trove_assets.dart';
import 'package:time_trove_app/common/constants/ui_dimenssions.dart';
import 'package:time_trove_app/common/di/service_locator.dart';
import 'package:time_trove_app/common/validators.dart';
import 'package:time_trove_app/common/widgets/tt_elevated_button.dart';
import 'package:time_trove_app/common/widgets/tt_text_form_field.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});
  static const String routeName = '/login_page';

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _logInFormKey = GlobalKey<FormState>();
  String? _validationError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: SvgPicture.asset(TTAssets.logo),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)?.log_in ?? '',
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: UIDimensions.universalSpacingS,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: UIDimensions.universalSpacingM),
                            child: Text(
                              AppLocalizations.of(context)
                                      ?.log_in_description ??
                                  '',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Form(
                            key: _logInFormKey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: UIDimensions.universalSpacingM,
                                      bottom: UIDimensions.universalSpacingS),
                                  child: TTTextInputField(
                                    controller: _emailController,
                                    validator: (value) {
                                      final errorMessage =
                                          Validators.validateEmail(
                                              email: value, context: context);
                                      if (errorMessage != null) {
                                        return errorMessage;
                                      }
                                    },
                                    hintText:
                                        AppLocalizations.of(context)?.email,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: UIDimensions.universalSpacingS,
                                      top: UIDimensions.universalSpacingM),
                                  child: TTTextInputField(
                                    controller: _passwordController,
                                    autofillHints: const [
                                      AutofillHints.password,
                                      AutofillHints.newPassword
                                    ],
                                    textCapitalization: TextCapitalization.none,
                                    validator: (value) {
                                      var errorMessage =
                                          Validators.validatePassword(
                                              password: value,
                                              context: context);
                                      if (errorMessage != null) {
                                        return errorMessage;
                                      }
                                    },
                                    hintText:
                                        AppLocalizations.of(context)?.password,
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: UIDimensions.universalSpacingXL,
                          ),
                          BlocProvider<LogInCubit>(
                            create: (context) => locator.get<LogInCubit>(),
                            child: BlocConsumer<LogInCubit, LogInState>(
                              listener: (blocContext, state) {
                                state.mapOrNull(
                                  success: (value) {
                                    _emailController.clear();
                                    _passwordController.clear();
                                    Navigator.of(context)
                                        .pushNamed(MainManuPage.routeName);
                                  },
                                  error: (value) {
                                    _validationError =
                                        AppLocalizations.of(context)
                                            ?.error_wrong_credentials;
                                    setState(() {
                                      _validationError =
                                          AppLocalizations.of(context)
                                              ?.error_wrong_credentials;
                                    });
                                  },
                                );
                              },
                              builder: (blocContext, state) {
                                Widget widget = TTElevatedButtonWidget(
                                  onPressed: () async {
                                    _validateCredentials();
                                    if (_validationError == null) {
                                      await blocContext
                                          .read<LogInCubit>()
                                          .logIn(_emailController.text,
                                              _passwordController.text);
                                    } else {
                                      setState(() {
                                        _validationError = _validationError;
                                      });
                                    }
                                  },
                                  buttonTitle:
                                      AppLocalizations.of(context)?.log_in ??
                                          '',
                                );

                                state.mapOrNull(
                                  loading: (value) {
                                    widget = const CircularProgressIndicator();
                                  },
                                );
                                return widget;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)?.already_have_an_account ??
                          '',
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(SignUpPage.routeName);
                      },
                      child: Text(
                        AppLocalizations.of(context)?.sign_up ?? '',
                        style: const TextStyle(
                            fontSize: 15,
                            color: TTColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _validateCredentials() {
    final emailError = Validators.validateEmail(
      email: _emailController.text,
      context: context,
    );

    if (emailError != null) {
      _validationError = emailError;
      return;
    }

    final passwordError = Validators.validatePassword(
      password: _passwordController.text,
      context: context,
    );

    if (passwordError != null) {
      _validationError = passwordError;
    } else {
      _validationError = null;
    }
  }
}
