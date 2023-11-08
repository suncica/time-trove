import 'package:flutter/material.dart';
import 'package:time_trove_app/common/colors/colors.dart';
import 'package:time_trove_app/common/constants/ui_dimenssions.dart';

class TTElevatedButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final String buttonTitle;

  const TTElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: UIDimensions.elevatedButtonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder?>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(TTColors.primaryColor),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 13.0),
          ),
        ),
        child: Text(
          buttonTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
