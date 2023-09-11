import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../CustomWidgets/app_text.dart';
import '../../Utils/app_color.dart';

class PriceBreakup extends StatelessWidget {
  get totalcash => 999;

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return OtherScafold(
      title: 'Price Breakup ',
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                  height:85, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffFFFFFF).withOpacity(0.5),
                        Color(0xff240044).withOpacity(0.5),
                      ],
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(1),
                    height: 85,//MediaQuery.of(context).size.height * 0.6, // set the height to 60% of the screen height
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: gameinfocard,

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
                                SvgPicture.asset('assets/Prize/win.svg'),
                                SizedBox(width: 6,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppText('Prize',style: th.bodyMedium?.copyWith(fontSize: 14,
                                    ),textColor: appWhiteShade,),
                                    AppText('₹${totalcash.toString()}',
                                      style: th.titleLarge?.copyWith(fontSize: 24,
                                          fontWeight: FontWeight.w700),textColor: appWhiteShade,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 19),
                            alignment: Alignment.centerRight,
                            // height: 20,
                            width: 1,
                            color: Color(0xff504757),
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
                                    AppText('Entry:',style: th.bodyMedium?.copyWith(fontSize: 12),textColor: sharewhitetext,),
                                    SizedBox(height:4),
                                    AppText('Life Lines',style: th.bodyMedium?.copyWith(fontSize: 12),textColor: sharewhitetext,),
                                    SizedBox(height:4),
                                    AppText('Life Lines',style: th.bodyMedium?.copyWith(fontSize: 12),textColor: sharewhitetext,),
                                  ],
                                ),
                                SizedBox(width: 16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppText('₹${totalcash.toString()}',style: th.bodyMedium?.copyWith(fontSize: 12),textColor: sharewhitetext,),
                                    SizedBox(height:4),
                                    AppText('₹${totalcash.toString()}', style: th.bodyMedium?.copyWith(fontSize: 12),textColor: sharewhitetext,),
                                    SizedBox(height:4),
                                    AppText('₹${totalcash.toString()}',style: th.bodyMedium?.copyWith(fontSize: 12),textColor: sharewhitetext,),
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
                        'Price Breakup',
                        style: th.bodyLarge?.copyWith(fontSize: 16),
                        textColor: appWhiteShade,
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: AppText(
                        '₹${totalcash.toString()}',
                        style: th.bodyLarge?.copyWith(fontSize: 16),
                        textColor: appSuccessShade,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left:24.0,right: 24),
                child: Row(
                  children: [
                    SizedBox(width: 12,),

                    Expanded(
                      flex: 2,
                      child: AppText(
                        'RANK',
                        style: th.bodyMedium?.copyWith(fontSize: 12, ),
                        textColor: sharewhitetext,
                      ),
                    ),

                    SizedBox(width: 12,),
                    Expanded(
                      flex: 0,
                      child: Center(
                        child: AppText(
                          'PRICE',
                          style: th.bodyMedium?.copyWith(fontSize: 12),
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
                  child:  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded( // Changed from Expanded to Flexible
                          flex: 2,
                          child: AppText(
                            'Rank 1',
                            style: th.bodyMedium?.copyWith( ),
                            textColor: appColorWhite,
                          ),
                        ),

                        SizedBox(width: 12,),
                        Expanded( // Changed from Expanded to Flexible
                          flex: 0,
                          child:Center(
                            child: AppText(
                              '₹10',
                              style: th.bodyLarge?.copyWith( ),
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
                            style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w500),
                            textColor: appColorWhite,
                          ),
                        ),

                        SizedBox(width: 12,),
                        Expanded( // Changed from Expanded to Flexible
                          flex: 0,
                          child:Center(
                            child: AppText(
                              '₹8',
                              style: th.bodyLarge?.copyWith( fontWeight: FontWeight.w700),
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
                            style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w500),
                            textColor: appColorWhite,
                          ),
                        ),

                        SizedBox(width: 12,),
                        Expanded( // Changed from Expanded to Flexible
                          flex: 0,
                          child:Center(
                            child: AppText(
                              '₹6',
                              style: th.bodyLarge?.copyWith( fontWeight: FontWeight.w700),
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
                            style: th.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                            textColor: appColorWhite,
                          ),
                        ),

                        SizedBox(width: 12,),
                        Expanded( // Changed from Expanded to Flexible
                          flex: 0,
                          child:Center(
                            child: AppText(
                              '₹4',
                              style:th.bodyLarge?.copyWith( fontWeight: FontWeight.w700),
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
                            style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w500),
                            textColor: appColorWhite,
                          ),
                        ),

                        SizedBox(width: 12,),
                        Expanded( // Changed from Expanded to Flexible
                          flex: 0,
                          child:Center(
                            child: AppText(
                              '₹3',
                              style: th.bodyLarge?.copyWith( fontWeight: FontWeight.w700),
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
                            style: th.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                            textColor: appColorWhite,
                          ),
                        ),

                        SizedBox(width: 12,),
                        Expanded( // Changed from Expanded to Flexible
                          flex: 0,
                          child:Center(
                            child: AppText(
                              '₹2',
                              style: th.bodyLarge?.copyWith( fontWeight: FontWeight.w700),
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
                  text:  TextSpan(
                    // style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'You have to score minimum ',
                        style: th.bodySmall?.copyWith( fontWeight: FontWeight.w500,color: appColorWhite,),
                      ),

                      TextSpan(
                        text: '1 Points',
                        style: th.bodySmall?.copyWith( fontWeight: FontWeight.w500,color: appColorYellow,),
                      ),
                      TextSpan(
                        text: ' in order to claim on the leaderboard',
                        style: th.bodySmall?.copyWith( fontWeight: FontWeight.w500,color: appColorWhite,),
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
                        style:th.bodyLarge?.copyWith( fontWeight: FontWeight.w700),
                        textColor: winingColor,
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20,),

              Container(
                height: 50,
                  padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
                  child: CustomAppButton.green(onTap: (){}, title: 'Start Game',
                    textStyle: th.bodyLarge?.copyWith(
                    fontSize: 20,fontWeight: FontWeight.w700,
                  ),)),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}