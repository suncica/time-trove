
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:time_trove_app/app/home/bloc/task_cubit.dart';
import 'package:time_trove_app/common/di/service_locator.dart';
import 'package:time_trove_app/common/routing/app_router.dart';
import 'package:time_trove_app/common/theme/tt_theme.dart';

void main() async {
  await setupServiceLocator();
  return runApp((const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.get<TaskCubit>(),
      child: MaterialApp(
        title: 'Time Trove',
        theme: TTTheme.provideRegularTheme(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
