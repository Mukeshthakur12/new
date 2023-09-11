import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/material.dart';

import '../Utils/app_color.dart';

class GameButtonCard extends StatelessWidget {
  final String imageUrl;
  final String buttonText;
  final Color borderColor;
  final VoidCallback onPressed;

  GameButtonCard({
    required this.imageUrl,
    required this.buttonText,
    required this.borderColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    final screenWidth = MediaQuery.of(context).size.width;
    final boxwidth = screenWidth * 0.28;
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        height: 103,
        width: boxwidth,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(99, 62, 134, 1), // Equivalent to #633E86
              offset: Offset(1, 1),
              blurRadius: 2,
              spreadRadius: 0.5,
            ),
            BoxShadow(
              color: Color.fromRGBO(74, 27, 72, 0.64), // Equivalent to rgba(74, 27, 72, 0.64)
              offset: Offset(-1, -1),
              blurRadius: 2,
              spreadRadius: 0.1,
            ),
            BoxShadow(
              color: Color.fromRGBO(4, 4, 4, 0.80), // Equivalent to rgba(4, 4, 4, 0.80)
              offset: Offset(1, 1),
              blurRadius: 1,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0xff633E86), // Equivalent to rgba(39, 39, 44, 0.48)
              offset: Offset(-1, -1),
              blurRadius: 1,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: borderColor,
          ),
          color: appPrimaryColor,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(9)),
                ),
                child: Image.asset(
                  imageUrl,
                  // height: 74,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 2,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 6,horizontal: 4),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
                    color: appPrimaryColor,
                  ),
                  child: AppText(
                    buttonText,
                    style: th.labelLarge?.copyWith(fontSize: 14),
                    textColor: appColorWhite,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
