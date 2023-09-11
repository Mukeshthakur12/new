import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CircularOtpInputField extends StatelessWidget {
  final TextEditingController controller;
  final int length;
  final Function(String) onChanged;

  CircularOtpInputField({
    required this.controller,
    required this.length,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: length,
      obscureText: false,
      animationType: AnimationType.scale,
      keyboardType: TextInputType.number,
      textStyle: TextStyle(color: appColorWhite),
      controller: controller,
      onChanged: onChanged,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.circle,
        fieldHeight: 60,
        fieldWidth: 60,
        activeFillColor: Colors.grey.withOpacity(0.2),
        selectedFillColor: Colors.grey.withOpacity(0.4),
        inactiveFillColor: Colors.transparent,
        borderWidth: 1,
        activeColor: appPrimaryColor,
        inactiveColor: Colors.grey,
        selectedColor: appPrimaryColor,
      ),
    );
  }
}


