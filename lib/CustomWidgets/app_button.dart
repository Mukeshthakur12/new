import 'dart:ui';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/app_color.dart';
import 'app_text.dart';

class CustomAppButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  final Color ? bgColor;
  final TextStyle ? textStyle;
  final Color ? textColor;
  final double ? height;
  final double ? vpadding;
  final double ? hpadding;

  CustomAppButton.green({
    required this.onTap,
    required this.title,
    this.bgColor=appColorGreen,
    this.textStyle,
    this.textColor,
    this.height,
    this.vpadding,
    this.hpadding,
  });
  CustomAppButton({
    required this.onTap,
    required this.title,
    this.bgColor,
    this.textStyle,
    this.textColor,
    this.height,
    this.vpadding,
    this.hpadding,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: height??36,
        padding: EdgeInsets.symmetric(vertical: vpadding??7, horizontal: hpadding??31),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: bgColor,
          boxShadow: const [
            BoxShadow(
              color: Color(0xff007b33),
              offset: Offset(-2, -2),
              blurRadius: 2,
              spreadRadius: 0,
              inset: true,
            ),

            BoxShadow(
              color: Color.fromRGBO(4, 4, 4, 0.19),
              offset: Offset(8, 8),
              blurRadius: 16,
              spreadRadius: 0,
             // inset: true,

            ),
            BoxShadow(
              color: Color.fromRGBO(39, 39, 44, 0.19),
              offset: Offset(-8, -8),
              blurRadius: 12,
              spreadRadius: 0,
              //inset: true,

            ),
          ],
        ),
        child: Center(
          child: AppText(
            title,
            style: textStyle?? th.bodyMedium?.copyWith(fontWeight: FontWeight.w700,fontSize: 16),
            textColor: textColor??appColorBlack,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final String svgImagePath;
  final String text;
  final VoidCallback onTap;

  CustomIconButton({required this.svgImagePath, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 53,
        // margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(76),
            border: Border.all(
                color: appPrimaryColor,
                width: 2
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                SvgPicture.asset(
                  svgImagePath,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 10),
                AppText(
                  text,
                  style: th.bodyLarge?.copyWith(
                      fontSize: 18
                  ),
                  textColor: Colors.white, // Set the text color to white

                ),
              ],
            ),

            SizedBox(width: 10),
            Container(
              margin: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white, // Customize the right arrow color here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class AppBorderButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  final Color textColor;

  AppBorderButton({ required this.text, required this.onTap,required this.width,required this.height,this.textColor=appWhiteShade});
  AppBorderButton.green({ required this.text, required this.onTap,required this.width,required this.height,this.textColor=appColorGreen});

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height:height, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(76)),
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
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(76),
              color: gameinfocard
          ),
          child:Center(
            child: AppText(text,style: th.bodyMedium?.copyWith(fontSize: 14,
                fontWeight: FontWeight.w500
            ),textColor: textColor,),
          ),
        ),
      ),
    );
  }
}

class CustomButtonApp extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;

  CustomButtonApp.green({
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.green,
    this.textColor = Colors.white,
    this.borderColor = Colors.blue,
    this.borderWidth = 1.0,
    this.borderRadius = 12.0,
  });
  CustomButtonApp.yellow({
    required this.text,
    required this.onPressed,
    this.backgroundColor = buttonYellow,
    this.textColor = appColorBlack,
    this.borderColor = buttonYellow,
    this.borderWidth = 1.0,
    this.borderRadius = 12.0,
  });
  CustomButtonApp({
    required this.text,
    required this.onPressed,
    this.backgroundColor = buttonYellowColor,
    this.textColor = appColorBlack,
    this.borderColor = buttonYellowColor,
    this.borderWidth = 1.0,
    this.borderRadius = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme
        .of(context)
        .textTheme;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        onPrimary: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
      ),
      child: AppText(text,style: th.labelMedium?.copyWith(fontSize: 18,
          fontWeight: FontWeight.w900,
          letterSpacing: .4
      ),textColor: textColor,),
    );
  }

}
class AppGredientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap; // Use VoidCallback for no-argument functions
  final double width;
  final double height;
  final Color textColor;
  final Color bgcolor;
  final List<Color> gradientColors;

  AppGredientButton({
    required this.text,
    required this.onTap,
    required this.width,
    required this.height,
    this.textColor = Colors.white,
    this.bgcolor = gameinfocard,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme
        .of(context)
        .textTheme;

    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: width,
            height: height,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(76)),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: gradientColors, // Use the provided gradient colors
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(.5),
              height: 53,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(76),
                color: bgcolor, // Remove the gameinfocard color
              ),
              child: Center(
                child: AppText(text, style: th.bodyMedium?.copyWith(fontSize: 14,
                    fontWeight: FontWeight.w500
                ), textColor: textColor,),
              ),
            ),
            ),
        );
    }
}