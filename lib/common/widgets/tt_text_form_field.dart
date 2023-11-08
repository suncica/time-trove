import 'package:flutter/material.dart';

class TTTextInputField extends StatelessWidget {
  final TextEditingController? controller;
  final Iterable<String>? autofillHints;
  final FormFieldValidator<String>? validator;
  final bool? obsecure;
  final bool? readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final bool? autofocus;
  final bool? enabled;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final String? initialValue;
  final TextCapitalization? textCapitalization;
  final Map<String, dynamic>? clientFeatures;

  const TTTextInputField(
      {super.key,
      this.controller,
      this.autofillHints,
      this.validator,
      this.obsecure,
      this.readOnly,
      this.onTap,
      this.onEditingCompleted,
      this.keyboardType,
      this.onChanged,
      this.autofocus,
      this.enabled,
      this.errorText,
      this.suffixIcon,
      this.prefixIcon,
      this.initialValue,
      this.hintText,
      this.textCapitalization,
      this.clientFeatures});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
          initialValue: initialValue,
          onChanged: onChanged,
          onEditingComplete: onEditingCompleted,
          autofocus: autofocus ?? false,
          autocorrect: false,
          onTap: onTap,
          enabled: enabled,
          readOnly: readOnly ?? false,
          obscureText: obsecure ?? false,
          keyboardType: keyboardType,
          controller: controller,
          autofillHints: autofillHints,
          decoration: InputDecoration(
            errorMaxLines: 3,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade900),
            errorText: errorText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            errorStyle: const TextStyle(color: Colors.red, fontSize: 16),
          ),
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          validator: validator),
    );
  }
}
