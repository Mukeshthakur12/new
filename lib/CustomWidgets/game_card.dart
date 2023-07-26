import 'package:flutter/material.dart';

import '../Utils/app_color.dart';

class GameButtonCard extends StatelessWidget {
  final String imageUrl;
  final String buttonText;
  final VoidCallback onPressed;

  GameButtonCard({
    required this.imageUrl,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        height: 105,
        width: 115,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: appPrimaryColor,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 4,),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  imageUrl,
                  height: 75,
                  width: 110,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 14),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
                    color: appPrimaryColor,
                  ),
                  child: Text(
                    buttonText,
                    style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w700),
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
