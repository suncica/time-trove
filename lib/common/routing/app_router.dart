import 'package:flutter/material.dart';

import 'package:time_trove_app/app/home/create_task_page.dart';
import 'package:time_trove_app/app/home/edit_task_page.dart';
import 'package:time_trove_app/app/home/main_manu_page.dart';
import 'package:time_trove_app/app/log_in/log_in.dart';
import 'package:time_trove_app/app/sign_up/sign_up_page.dart';

class AppRouter {
  static const String signUpRequestDtoDtoArgKey = 'signUpRequestDto';

  static PageRoute<Object?> onGenerateRoute(RouteSettings settings) {
    late final Widget page;
    if (settings.name == '/') {
      page = const SignUpPage();
    } else if (settings.name == LogInPage.routeName) {
      page = const LogInPage();
      return _NoAnimationPageRoute(builder: (BuildContext context) => page);
    } else if (settings.name == MainManuPage.routeName) {
      page = const MainManuPage();
    } else if (settings.name == CreateTaskPage.routeName) {
      page = const CreateTaskPage();
    } else if (settings.name == EditTaskPage.routeName) {
      final arguments = settings.arguments as EditTaskPageArguments;
      page = EditTaskPage(arguments: arguments);
    }

    return MaterialPageRoute<Object?>(
        builder: (context) => page, settings: settings);
  }
}

class _NoAnimationPageRoute<T> extends MaterialPageRoute<T> {
  _NoAnimationPageRoute({required WidgetBuilder builder})
      : super(builder: builder);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}
