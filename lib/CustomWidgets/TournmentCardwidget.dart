import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/app_color.dart';
import '../Utils/functions.dart';
import 'CustomSliceWidget.dart';

class TournmentCard extends StatelessWidget {
  final String priceMoney;
  final Duration timeRemaining;
  final int entriesLeft;
  final int totalEntries;
  final int entryMoney;
  final Function() onEntryButtonPressed;
  final List<Color> gradientColors;


  TournmentCard({
    required this.priceMoney,
    required this.timeRemaining,
    required this.entriesLeft,
    required this.totalEntries,
    required this.entryMoney,
    required this.onEntryButtonPressed,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return  SizedBox(
      height: 177,
      width: 290,
      child: Container(
        margin: EdgeInsets.only(left: 8,right: 8),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient:  LinearGradient(
              colors: gradientColors,
              transform: GradientRotation(129 * 3.14159265 / 180),
              stops: [0.0, 1.0],
              // begin: Alignment.topLeft,
              // end: Alignment.topRight,
            )
        ),
        child: Container(
          margin: EdgeInsets.only(left: 8,right: 8,top: 8),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/GameButton/fruit.png',height: 50,width: 63,),
                    CustomAppButton.green(onTap: (){}, title: '₹5 Play')

                  ],
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 4,),
                      Container(
                          padding: EdgeInsets.only(top: 3),
                          child: SvgPicture.asset('assets/GameButton/clock.svg',height: 14,
                            color: appColorWhite,)),
                      SizedBox(width: 4,),
                      AppText(formattedDuration(timeRemaining),
                        style: th.bodyMedium?.copyWith(fontSize: 15,fontWeight: FontWeight.w500
                        ),
                        textColor: appColorWhite,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/GameButton/trophy.svg',height: 25,),
                      SizedBox(width: 6,),
                      AppText(
                        "₹"+ priceMoney,
                        style: th.headlineLarge?.copyWith(
                          fontSize: 26,
                         // fontWeight: FontWeight.bold,
                        ),textColor: appColorWhite,
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 8,),
              Stack(
                children: [
                  Container(
                    height: 10, // Set your desired height here
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                  Container(
                    height: 10,
                    decoration: BoxDecoration(
                      color: appColorWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: entriesLeft / totalEntries,
                    child: Container(
                      height: 10,
                      decoration: BoxDecoration(
                        color: appColorGreen1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Center(
                child: AppText((entriesLeft).toString()
                    +"/"+totalEntries.toString()+" slots filled",
                  style: th.bodyMedium?.copyWith(
                    fontSize: 14),textColor: appColorWhite,),
              ),
              SizedBox(height: 8,)
            ],
          ),
        ),
      ),
    );
  }
}
