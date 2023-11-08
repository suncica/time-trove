import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:time_trove_app/app/log_in/log_in.dart';
import 'package:time_trove_app/app/sign_up/bloc/sign_up_cubit.dart';
import 'package:time_trove_app/app/sign_up/bloc/sign_up_state.dart';
import 'package:time_trove_app/app/sign_up/model/sign_up_dto.dart';
import 'package:time_trove_app/common/colors/colors.dart';
import 'package:time_trove_app/common/constants/time_trove_assets.dart';
import 'package:time_trove_app/common/constants/ui_dimenssions.dart';
import 'package:time_trove_app/common/di/service_locator.dart';
import 'package:time_trove_app/common/networking/api_error_handler.dart';
import 'package:time_trove_app/common/validators.dart';
import 'package:time_trove_app/common/widgets/tt_elevated_button.dart';
import 'package:time_trove_app/common/widgets/tt_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const String routeName = '/';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _signUpFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _validationError;
  late BuildContext _blocBuildContext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: ((_) => locator.get<SignUpCubit>())),
          ],
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
                              AppLocalizations.of(context)?.sign_up ?? '',
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
                                        ?.create_account_description ??
                                    '',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            BlocConsumer<SignUpCubit, SignUpState>(
                              listener: (context, state) {
                                state.mapOrNull(success: (value) {
                                  _emailController.clear();
                                  _passwordController.clear();
                                  Navigator.of(context)
                                      .pushNamed(LogInPage.routeName);
                                }, error: (value) {
                                  if (value.exception
                                      is UserAlreadyExistException) {
                                    _validationError =
                                        AppLocalizations.of(context)
                                            ?.error_wrong_credentials;
                                    setState(() {
                                      _validationError =
                                          AppLocalizations.of(context)
                                              ?.error_wrong_credentials;
                                    });
                                  } else {}
                                });
                              },
                              builder: (context, state) {
                                _blocBuildContext = context;

                                return Form(
                                  key: _signUpFormKey,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: UIDimensions.universalSpacingM,
                                            bottom:
                                                UIDimensions.universalSpacingS),
                                        child: TTTextInputField(
                                          controller: _emailController,
                                          validator: (value) {
                                            final errorMessage =
                                                Validators.validateEmail(
                                                    email:
                                                        _emailController.text,
                                                    context: context);
                                            if (errorMessage != null) {
                                              return errorMessage;
                                            }
                                          },
                                          hintText: AppLocalizations.of(context)
                                              ?.email,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom:
                                                UIDimensions.universalSpacingS,
                                            top:
                                                UIDimensions.universalSpacingM),
                                        child: TTTextInputField(
                                          controller: _passwordController,
                                          autofillHints: const [
                                            AutofillHints.password,
                                            AutofillHints.newPassword
                                          ],
                                          textCapitalization:
                                              TextCapitalization.none,
                                          validator: (value) {
                                            var errorMessage =
                                                Validators.validatePassword(
                                                    password:
                                                        _passwordController
                                                            .text,
                                                    context: context);
                                            if (errorMessage != null) {
                                              return errorMessage;
                                            }
                                          },
                                          hintText: AppLocalizations.of(context)
                                              ?.password,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: UIDimensions.universalSpacingXL,
                            ),
                            TTElevatedButtonWidget(
                              onPressed: () async {
                                bool formValid =
                                    _signUpFormKey.currentState!.validate();
                                if (formValid) {
                                  await _registerButtonAction(context);
                                } else {
                                  setState(() {
                                    _validationError = _validationError;
                                  });
                                }
                              },
                              buttonTitle:
                                  AppLocalizations.of(context)?.sign_up ?? '',
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
                          Navigator.of(context).pushNamed(LogInPage.routeName);
                        },
                        child: Text(
                          AppLocalizations.of(context)?.log_in ?? '',
                          style: const TextStyle(
                              fontSize: 15,
                              color: TTColors.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  SignUpRequestDto _createDtoFromFields() {
    return SignUpRequestDto(
        username: _emailController.text, password: _passwordController.text);
  }

  _registerButtonAction(BuildContext context) async {
    final signUpRequestDto = _createDtoFromFields();
    if (signUpRequestDto != null) {
      await _blocBuildContext.read<SignUpCubit>().signUp(signUpRequestDto);
      Navigator.of(context).pushNamed(LogInPage.routeName);
      return;
    }
  }


}
