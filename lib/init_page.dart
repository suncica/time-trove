import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:time_trove_app/app/bloc/auth_cubit.dart';
import 'package:time_trove_app/app/bloc/auth_state.dart';
import 'package:time_trove_app/app/home/main_manu_page.dart';
import 'package:time_trove_app/app/log_in/log_in.dart';
import 'package:time_trove_app/common/colors/colors.dart';
import 'package:time_trove_app/log_helper.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TTColors.backgroundColor,
        body: BlocConsumer<AuthCubit, AuthState>(
          builder: (context, state) {
            d('InitPage, BlocConsumer, builder= $state');
            Widget returnWidget = Container();
            state.mapOrNull(
                loading: (value) => returnWidget =
                    const Center(child: CircularProgressIndicator()));

            return returnWidget;
          },
          listener: (context, state) {
            d('InitPage, BlocConsumer, listener= $state');
            state.mapOrNull(
              authorized: (value) =>
                  Navigator.of(context).pushNamed(MainManuPage.routeName),
              unauthorized: (value) =>
                  Navigator.of(context).pushNamed(LogInPage.routeName),
            );
          },
        ));
  }
}
