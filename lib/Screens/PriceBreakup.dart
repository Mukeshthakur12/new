import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class PriceBreakup extends StatelessWidget {
  get totalcash => 999;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color:Color(0xff000000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                height:76, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                  width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                  height: 74,//MediaQuery.of(context).size.height * 0.6, // set the height to 60% of the screen height
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: appPrimaryColor,

                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16,top: 12,bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 1,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/Prize/prize.svg'),
                                SizedBox(width: 6,),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AppText('Prize',style: TextStyle(
                                          fontSize: 20,fontWeight: FontWeight.w700
                                      ),textColor: appWhiteShade,),
                                      SizedBox(height:3),
                                      AppText('₹ ${totalcash.toString()}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),textColor: appWhiteShade,),
                                    ],
                                  ),
                              ],
                            ),
                        ),
                        Expanded(
                          flex: 1,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AppText('Entry:',style: TextStyle(
                                      fontSize: 12,fontWeight: FontWeight.w500
                                  ),textColor: sharewhitetext,),
                                  SizedBox(height:4),
                                  AppText('Life Lines',style: TextStyle(
                                      fontSize: 12,fontWeight: FontWeight.w500
                                  ),textColor: sharewhitetext,),
                                  SizedBox(height:4),
                                  AppText('Life Lines',style: TextStyle(
                                      fontSize: 12,fontWeight: FontWeight.w500
                                  ),textColor: sharewhitetext,),
                                ],
                              ),
                              SizedBox(width: 16,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AppText('₹ ${totalcash.toString()}',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),textColor: sharewhitetext,),
                                  SizedBox(height:4),
                                  AppText('₹ ${totalcash.toString()}',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),textColor: sharewhitetext,),
                                  SizedBox(height:4),
                                  AppText('₹ ${totalcash.toString()}',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),textColor: sharewhitetext,),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: AppText(
                      'Total Referred',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      textColor: appWhiteShade,
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: AppText(
                      '₹ ${totalcash.toString()}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      textColor: appSuccessShade,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:24.0,right: 24),
              child: Row(
                children: [
                  SizedBox(width: 12,),

                  Expanded(
                    flex: 2,
                    child: AppText(
                      'RANK',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      textColor: sharewhitetext,
                    ),
                  ),

                  SizedBox(width: 12,),
                  Expanded(
                    flex: 0,
                    child: Center(
                      child: AppText(
                        'PRICE',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                        textColor: sharewhitetext,
                      ),
                    ),
                  ),
                  SizedBox(width: 12,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
              child: Container(
                width: MediaQuery.of(context).size.width - 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: appPrimaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded( // Changed from Expanded to Flexible
                        flex: 2,
                        child: AppText(
                          'Rank 1',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          textColor: appColorWhite,
                        ),
                      ),

                      SizedBox(width: 12,),
                      Expanded( // Changed from Expanded to Flexible
                        flex: 0,
                        child:Center(
                          child: AppText(
                            '₹10',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            textColor: appColorWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
              child: Container(
                width: MediaQuery.of(context).size.width - 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: appPrimaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded( // Changed from Expanded to Flexible
                        flex: 2,
                        child: AppText(
                          'Rank 2',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          textColor: appColorWhite,
                        ),
                      ),

                      SizedBox(width: 12,),
                      Expanded( // Changed from Expanded to Flexible
                        flex: 0,
                        child:Center(
                          child: AppText(
                            '₹8',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            textColor: appColorWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
              child: Container(
                width: MediaQuery.of(context).size.width - 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: appPrimaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded( // Changed from Expanded to Flexible
                        flex: 2,
                        child: AppText(
                          'Rank 3',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          textColor: appColorWhite,
                        ),
                      ),

                      SizedBox(width: 12,),
                      Expanded( // Changed from Expanded to Flexible
                        flex: 0,
                        child:Center(
                          child: AppText(
                            '₹6',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            textColor: appColorWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
              child: Container(
                width: MediaQuery.of(context).size.width - 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: appPrimaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded( // Changed from Expanded to Flexible
                        flex: 2,
                        child: AppText(
                          'Rank 4-10',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          textColor: appColorWhite,
                        ),
                      ),

                      SizedBox(width: 12,),
                      Expanded( // Changed from Expanded to Flexible
                        flex: 0,
                        child:Center(
                          child: AppText(
                            '₹4',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            textColor: appColorWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
              child: Container(
                width: MediaQuery.of(context).size.width - 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: appPrimaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded( // Changed from Expanded to Flexible
                        flex: 2,
                        child: AppText(
                          'Rank 11-20',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          textColor: appColorWhite,
                        ),
                      ),

                      SizedBox(width: 12,),
                      Expanded( // Changed from Expanded to Flexible
                        flex: 0,
                        child:Center(
                          child: AppText(
                            '₹3',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            textColor: appColorWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
              child: Container(
                width: MediaQuery.of(context).size.width - 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: appPrimaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded( // Changed from Expanded to Flexible
                        flex: 2,
                        child: AppText(
                          'Rank 21-30',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          textColor: appColorWhite,
                        ),
                      ),

                      SizedBox(width: 12,),
                      Expanded( // Changed from Expanded to Flexible
                        flex: 0,
                        child:Center(
                          child: AppText(
                            '₹2',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                            textColor: appColorWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
              child: RichText(
                  textAlign:TextAlign.center,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'You have to score minimum ',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: appColorWhite,),
                    ),

                    TextSpan(
                      text: '1 Points',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: appColorYellow,),
                    ),
                    TextSpan(
                      text: ' in order to claim on the leaderboard',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: appColorWhite,),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/Prize/read.svg'),
                  SizedBox(width: 8,),
                  AppText(
                    'Read All Conditions!',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    textColor: appColorWhite,
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
