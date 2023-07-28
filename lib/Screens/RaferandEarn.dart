import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class Refer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(

            //width: 200,Set the width of the container
            width: double.infinity,
            height: 144, // Set the height of the container
            //color: Colors.blue[200],
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [refercard1, refercard2], // Set the colors for the gradient
                begin: Alignment.centerLeft, // Set the starting point of the gradient
                end: Alignment.centerRight, // Set the ending point of the gradient
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),// Set the background color of the container
            child: Stack(
              children: [
                Positioned(
                  //top: 0, // Set the position from the top
                  left: 0,
                  //right: 0,
                  bottom: 0,// Set the position from the left
                  child: SvgPicture.asset(
                    'assets/Refer/cross.svg', // Replace with the path to your second image
                    width: 485, // Set the width of the image
                    height: 89, // Set the height of the image
                  ),
                ),
                // First image
                Positioned(
                  //left: 182,
                  right: -17,
                  top: -25, // Set the position from the left
                  child: Image.asset(
                    'assets/Refer/celebrate.png', // Replace with the path to your first image
                    width: 194, // Set the width of the image
                    height: 194, // Set the height of the image
                  ),
                ),

                // Text
                 Positioned(
                  top: 32, // Set the position from the top
                  left: 21, // Set the position from the left
                  child: Container(
                    width: 156,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          "Earn Upto ₹300",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                          textColor: appWhiteShade,
                        ),
                        SizedBox(height: 8,),
                        AppText(
                          "by sharing Tento app with your friends",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                          textColor: appWhiteShade,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: DottedBorder(
            dashPattern: [5, 3], // Set the pattern for the dots (5 = dash length, 3 = space length)
            strokeWidth: 1, // Set the width of the border lines
            color: Colors.black, // Set the color of the dots and border lines
            borderType: BorderType.Rect, // Set the shape of the border (Rect or Circle)
            radius: Radius.circular(10), // Set the radius of the border corners (if using BorderType.Rect)
            child: Container(
              // width: 200,
              height: 67,
              color: sharecard, // Set the color of the container inside the border
              child: Padding(
                padding: const EdgeInsets.only(top: 11.0, bottom: 11, right: 21, left: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            'Your referral code',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                            textColor: appWhiteShade,
                          ),
                          AppText(
                            'MADDYZ',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                            textColor: appWhiteShade,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        width: 48,
                        child: AppText(
                          'Copy Code',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                          textColor: appWhiteShade,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ),
      ],
    );
  }
}
