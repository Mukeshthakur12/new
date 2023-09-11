import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';

class TappableText extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function(String) onTap;

  TappableText({required this.text, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(text),
      child: Container(
        padding: EdgeInsets.only(bottom: 4),
        decoration: BoxDecoration(
          border: isSelected
              ? Border(
            bottom: BorderSide(
              color: Colors.yellow,
              width: 1,
            ),
          )
              : null,
        ),
        child: AppText(
          text,
          textColor: isSelected ?  Colors.yellow: appLabelTextColor,

        ),
      ),
    );
  }
}