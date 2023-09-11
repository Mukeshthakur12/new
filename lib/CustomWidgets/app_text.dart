import 'package:flutter/material.dart';
import '../Utils/app_color.dart';

class AppText extends StatelessWidget {
  final String titleText;
  final Color? textColor;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  const AppText.blue(
      this.titleText, {
        Key? key,
        this.textColor = appPrimaryColor,
        this.style,
        this.maxLines,
        this.overflow,
        this.textAlign,
      }) : super(key: key);

  const AppText.white(
      this.titleText, {
        Key? key,
        this.textColor = appColorWhite,
        this.style,
        this.maxLines,
        this.overflow,
        this.textAlign,
      }) : super(key: key);

  const AppText(
      this.titleText, {
        Key? key,
        this.textColor,
        this.style,
        this.maxLines,
        this.overflow,
        this.textAlign,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText ?? '',
      style: style?.copyWith(color: textColor ?? appColorBlack) ??
          TextStyle(color: textColor ?? appColorBlack),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}