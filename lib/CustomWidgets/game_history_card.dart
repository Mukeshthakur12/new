import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GameHistoryScreenCard extends StatelessWidget {
  final String image;
  final String gameTitle;
  final String cash;
  final String winAmount;
  final String date;
  final String text;

  GameHistoryScreenCard({
    required this.image,
    required this.gameTitle,
    required this.cash,
    required this.winAmount,
    required this.date,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        gradient:  LinearGradient(
          colors: [Color(0xffFFFFFF).withOpacity(0.5), Color(0xff240044).withOpacity(0.5)],
          // stops: [0.1,1.0],
          begin: Alignment.topCenter,end: Alignment.bottomCenter
          
        ),
        borderRadius: BorderRadius.circular(12)
      ),
      margin: EdgeInsets.symmetric(horizontal: 18,vertical: defaultPadding),

      padding: EdgeInsets.all(1),
      child: Container(
        decoration: BoxDecoration(
          color: gameinfocard,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                          height: 55,
                          width: 57,
                          child: Image.asset(image, fit: BoxFit.cover)),
                      // SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 6,left: 8,right: 8),
                            child: AppText(
                              gameTitle,
                              style: th.labelLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 16),
                              textColor: appColorWhite,
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 5),
                              // width: 62,
                              // height: 30,
                              child: CustomAppButton.green(onTap: (){},
                                title: 'Cash',height:25,
                                vpadding:0,hpadding: 20,
                                textStyle: th.bodyLarge?.copyWith(fontWeight: FontWeight.w500,fontSize: 16),))
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            colors: [Color(0xff8F7201), Color(0xff211A00)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            // stops: [0.1,1.0]
                          ),

                        ),
                        padding: EdgeInsets.all(1),
                        child: Container(
                          height: 40,
                          width: 65,
                          decoration: BoxDecoration(
                            color: pbgcolor,
                            borderRadius: BorderRadius.circular(8),
                            // border: Border.all(
                            //   color: Color(0xff8F7201)
                            // )
                          ),

                          child: Center(
                            child: Column(
                              children: [
                                AppText(' $winAmount',style: th.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w900,fontSize: 16
                                ),textColor: appGameBorder,),
                                AppText('Points',style: th.bodyMedium?.copyWith(
                                  fontSize: 10
                                ),textColor: appGamepointBorder,),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 4,),
                      SvgPicture.asset('assets/GameHistory/win.svg',height: 40,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 1,
              decoration: const BoxDecoration(
                gradient:  LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff654A7F),Color(0xff82618B)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AppText(text,style: th.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,fontSize: 14
                    ),textColor: appColorWhite,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AppText(date,style: th.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,fontSize: 14
                    ),textColor: appColorWhite,),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
