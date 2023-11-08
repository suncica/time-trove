import 'package:flutter/material.dart';
import 'package:time_trove_app/common/colors/colors.dart';

class TTTheme {
  static ThemeData provideRegularTheme() {
    return ThemeData(
       colorScheme: ColorScheme.fromSwatch(
    backgroundColor: TTColors.backgroundColor,
  ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
      ),
      // primarySwatch: FEColors.mainDarkGreenColor,
      // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //   selectedItemColor: FEColors.darkGrayColor,
      //   unselectedItemColor: FEColors.grayColor,
      //   backgroundColor: FEColors.grayColorWithOpacity,
      //   selectedLabelStyle:
      //       TextStyle(fontSize: UIDimensions.bottomAppBarLabelFontSize),
      //   unselectedLabelStyle:
      //       TextStyle(fontSize: UIDimensions.bottomAppBarLabelFontSize),
      // ),
      // textTheme: const TextTheme(
      //     displayMedium:
      //         TextStyle(color: FEColors.primaryColor, fontSize: 16)),
      // dividerTheme:
      //     const DividerThemeData(color: FEColors.mainDarkGreenColor),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        labelStyle:
            TextStyle(fontStyle: FontStyle.italic, color: Colors.grey.shade500),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
              width: 1, style: BorderStyle.solid, color: Colors.grey.shade300),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
              width: 1, style: BorderStyle.solid, color: TTColors.primaryColor),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide:
              BorderSide(width: 1, style: BorderStyle.solid, color: Colors.red),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide:
              BorderSide(width: 1, style: BorderStyle.solid, color: Colors.red),
        ),
      ),
      //   errorMaxLines: 3,
      //   contentPadding: const EdgeInsets.fromLTRB(4, 5, 4, 5),
      //   hintText: hintText,
      //   hintStyle: const TextStyle(color: FEColors.grayColor),
      //   errorText: errorText,
      //   prefixIcon: prefixIcon,
      //   suffixIcon: suffixIcon,
      //   errorStyle: const TextStyle(
      //       color: FEColors.validationErrorColor, fontSize: 16),
      // ),

      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ButtonStyle(
      //     elevation: const MaterialStatePropertyAll(0),
      //     backgroundColor: MaterialStateProperty.resolveWith<Color>(
      //       (Set<MaterialState> states) {
      //         if (states.contains(MaterialState.disabled)) {
      //           return FEColors.grayColor;
      //         }
      //         return FEColors
      //             .mainDarkGreenColor; // Use the component's default.
      //       },
      //     ),
      //   ),
    );
  }
}
