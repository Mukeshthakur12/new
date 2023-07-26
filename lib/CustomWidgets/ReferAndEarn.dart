import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/app_color.dart';
import 'app_text.dart';

class ReferEarnCard extends StatelessWidget {
  final VoidCallback onPressed;

  ReferEarnCard({

    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: referbackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child:  Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText('Refer & Earn',style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w700
                  ),textColor: appColorWhite,),
                  SizedBox(height: 2,),
                  AppText('You both get ₹100 with your referrals first order ',style: TextStyle(
                      fontSize: 8,fontWeight: FontWeight.w300
                  ),textColor: appColorWhite,),
                  SizedBox(height: 12,),
                  Container(
                    //height: 10,
                    decoration: BoxDecoration(
                      color: appWhiteShade,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom: 8,left: 16,right: 16),
                      child: AppText('Refer Now',style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.w700
                      ),textColor: appColorBlack,),
                    ),
                  ),
                ],
              ),
            ),
          ),
         //SvgPicture.asset('assets/GameButton/coininhand.svg'),
          Expanded(
            flex: 0,
              child: Image.asset('assets/GameButton/coininhand.png')),
        ],
      ),
    );
  }
}
