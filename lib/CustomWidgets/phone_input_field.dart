import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSignTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String flagImagePath;

  CustomSignTextField({
    required this.controller,
    required this.hintText,
    required this.flagImagePath,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: gameinfocard,
      ),
      height: 52,
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 4),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.phone,
        style: th.bodyLarge?.copyWith(color: appColorWhite),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),

          hintText: hintText,
          hintStyle: th.bodyMedium?.copyWith(color: appColorWhite),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                flagImagePath,
                height: 24,
                width: 24,
              ),
              SizedBox(width: 8),
              AppText(
                '+91',
                style: th.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
                textColor: appColorWhite,
              ),
              SizedBox(width: 8),

              Container(
                width: 1,
                height: 35,
                color:  signupline,
              ),
              SizedBox(width: 8),

            ],
          ),
          suffixIcon: Container(
            height: 10,
            width: 13,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: SvgPicture.asset('assets/Game/call.svg',
              color: appColorWhite,
              height: 13,
              width: 13,),
          ),

         border: InputBorder.none,

        ),
      ),
    );
  }
}
