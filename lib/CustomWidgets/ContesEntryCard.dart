import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/app_color.dart';
import 'CustomSliceWidget.dart';

class ContestEntryCard extends StatelessWidget {
  final String priceMoney;
  final Duration timeRemaining;
  final int entriesLeft;
  final int totalEntries;
  final double entryMoney;
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
    return Card(
      elevation: 4,
      color: appContestCardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: 156,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16,right: 16,top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: AppText(
                      "₹ "+ priceMoney,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),textColor: appColorWhite,
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
                        InkWell(
                          onTap: onEntryButtonPressed,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: appColorGreen1
                              ),
                              child: AppText('₹ ${entryMoney.toString()+ " Play"}',
                                style: TextStyle( fontWeight: FontWeight.w700,fontSize: 16),textColor: appColorBlack,
                              )),

                        ),
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
                      SizedBox(width: 4,),
                      Container(
                          padding: EdgeInsets.only(top: 4),
                          child: Icon(CupertinoIcons.clock,size: 14,color: appColorWhite,)),
                      SizedBox(width: 4,),
                      Text(
                        '${timeRemaining.inDays}d ${timeRemaining.inHours.remainder(24)}h ${timeRemaining.inMinutes.remainder(60)}m left',
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
      ),
    );
  }
}
