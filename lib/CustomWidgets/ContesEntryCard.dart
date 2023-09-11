import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/app_color.dart';
import '../Utils/functions.dart';
import 'CustomSliceWidget.dart';

class ContestEntryCard extends StatelessWidget {
  final String priceMoney;
  final Duration timeRemaining;
  final int entriesLeft;
  final int totalEntries;
  final int entryMoney;
  final Function() onEntryButtonPressed;

  ContestEntryCard({
    required this.priceMoney,
    required this.timeRemaining,
    required this.entriesLeft,
    required this.totalEntries,
    required this.entryMoney,
    required this.onEntryButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(48, 1, 38, 0.30),
            Color.fromRGBO(55, 0, 31, 0.5),
          ],
          stops: [0.0, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF371F4D),
            offset: Offset(0, 0),
            blurRadius: 0,
          ),
        ],
      ),
      height: 156,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16,right: 16,top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/GameButton/trophy.svg'),
                      SizedBox(width: 4,),
                      AppText(
                        "₹"+ priceMoney,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),textColor: appColorWhite,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText((totalEntries-entriesLeft).toString()+" Filled",style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500),textColor: appColorWhite,),
                    AppText(entriesLeft.toString()+" Left",style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500),textColor: appColorWhite,),
                  ],
                ),
                SizedBox(height: 4,),
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
                        color: appTimeColor,
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
                SizedBox(height: 2),
                Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText('3 Tries',style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w500
                      ),textColor: appColorWhite,),
                      CustomAppButton.green(onTap: (){}, title: '₹${entryMoney.toString()+ " Play"}'),
                      Icon(CupertinoIcons.question_circle,size:28,color: appColorWhite,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: -1,
              top: -1,
              child: ClipPath(
                clipper: SliceClipper1(),
                child: Container(
                  width: 127,
                  height: 45,
                  decoration: BoxDecoration(
                    color: appTimeColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(6),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child:Center(
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                            padding: EdgeInsets.only(top: 3),
                            child: SvgPicture.asset('assets/GameButton/clock.svg',height: 14,
                              color: appColorWhite,)),
                        SizedBox(width: 4,),
                        Text(
                          formattedDuration(timeRemaining),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))
        ],

      ),
    );
  }
}
