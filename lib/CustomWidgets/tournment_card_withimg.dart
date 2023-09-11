import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/app_color.dart';
import '../Utils/functions.dart';
import 'CustomSliceWidget.dart';

class TournmentCardWithImg extends StatelessWidget {
  final String priceMoney;
  final String imgurl;
  final Duration timeRemaining;
  final int entriesLeft;
  final int totalEntries;
  final int entryMoney;
  final Function() onEntryButtonPressed;
  final List<Color> gradientColors;

  TournmentCardWithImg({
    required this.priceMoney,
    required this.imgurl,
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

    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding*3,bottom: 2),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFF7A00).withOpacity(0.5),
                  Color(0xffFFBC11).withOpacity(0.5),
                ],
              ),
            ),
            height: 166,
            child: Container(
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //border: Border.all(color: appColorWhite,width: 1),
                gradient:  LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: gradientColors,
                  transform: GradientRotation(129 * 3.14159265 / 180),

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

              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 16,top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/GameButton/trophy.svg'),
                                SizedBox(width: 6,),
                                AppText(
                                  "₹"+ priceMoney,
                                  style: th.titleLarge?.copyWith(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                  ),textColor: appColorWhite,
                                ),
                              ],
                            ),

                            AppText(entriesLeft.toString()+"/"+totalEntries.toString()
                                +" Filled",style: th.bodyMedium?.copyWith(
                              fontSize: 13,
                            ),textColor: appColorWhite,),
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
                          color: Colors.white,
                        ),
                        SizedBox(height: 2),

                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: CustomAppButton.green(onTap: (){}, title: '₹${entryMoney.toString()+ " Play"}')),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Icon(CupertinoIcons.question_circle,size:28,color: appColorWhite,))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      right: 0,
                      //top: 1,
                      child: ClipPath(
                        clipper: SliceClipper1(),
                        child: Container(
                          width: 127,
                          height: 45,
                          decoration: BoxDecoration(
                            color: appTimeColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(16),
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
                                AppText(
                                  formattedDuration(timeRemaining),
                                  style: th.bodyMedium?.copyWith(
                                  ),
                                  textColor: appColorWhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))
                ],

              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 20,
              child: Image.asset(imgurl,height: 65,width: 81,)),
        ],
      ),
    );
  }
}
