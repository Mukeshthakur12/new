import 'package:flutter/material.dart';

import '../Utils/app_color.dart';

class CustomInputText extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Function(String)? onChanged;
  final TextInputType inputType; // New property for input type

  CustomInputText({
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.onChanged,
    this.inputType = TextInputType.text, // Default is text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:54, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFFFFFF),
            Color(0xff240044),
          ],
        ),
      ),
      child: Container(
        height: 53,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: gameinfocard
        ),
        child: TextFormField(

          controller: controller,
          obscureText: obscureText,
          onChanged: onChanged,
          keyboardType: inputType,
          style: TextStyle(color: Colors.white),

          decoration: InputDecoration(
            // labelText: labelText,

            hintText: hintText,
            hintStyle: TextStyle(
              color: appColorWhite
            ),
            border: InputBorder.none,

            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(8.0),
            //   borderSide: BorderSide(color: Colors.grey),
            // ),

            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          ),
        ),
      ),
    );
  }
}
