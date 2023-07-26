import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/app_color.dart';
import 'CustomSliceWidget.dart';

class TournmentCard extends StatelessWidget {
  final String priceMoney;
  final Duration timeRemaining;
  final int entriesLeft;
  final int totalEntries;
  final int entryMoney;
  final Function() onEntryButtonPressed;

  TournmentCard({
    required this.priceMoney,
    required this.timeRemaining,
    required this.entriesLeft,
    required this.totalEntries,
    required this.entryMoney,
    required this.onEntryButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 8,right: 8),
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [
              Color(0xffA64EFF), // Replace this with the color of your choice
              Color(0xff320063), // Replace this with the color of your choice// Replace this with the color of your choice
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
      ),
      height: 177,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16,right: 16,top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/GameButton/fruit.png',height: 50,width: 63,),
                      InkWell(
                        onTap: onEntryButtonPressed,
                        child: Container(
                            height: 36,
                            padding: EdgeInsets.symmetric(vertical: 7,horizontal: 31),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: appColorGreen1
                            ),
                            child: AppText('₹ ${entryMoney.toString()+ " Play"}',
                              style: TextStyle( fontWeight: FontWeight.w700,fontSize: 16),textColor: appColorBlack,
                            )),

                      ),

                    ],
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 4,),
                        Container(
                            padding: EdgeInsets.only(top: 3),
                            child: Icon(CupertinoIcons.clock,size: 14,
                              color: appColorWhite,)),
                        SizedBox(width: 4,),
                        Text(
                          ' ${timeRemaining.inHours.remainder(24)}h ${timeRemaining.inMinutes.remainder(60)}m left',
                          style: TextStyle(
                            fontSize: 12,
                            color: appColorWhite,
                          ),
                        ),
                      ],
                    ),
                    AppText(
                      "₹ "+ priceMoney,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),textColor: appColorWhite,
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
                  child: AppText((totalEntries-entriesLeft).toString()
                      +"/"+totalEntries.toString()+" slots filled",style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w500),textColor: appColorWhite,),
                ),
                SizedBox(height: 8,)
              ],
            ),
          ),
        ],

      ),
    );
  }
}
