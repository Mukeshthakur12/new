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
    var th = Theme.of(context).textTheme;

    return Card(
      elevation: 4,
      color: referbackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child:  Container(
        height: 108,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText('Refer & Earn',style: th.labelLarge?.copyWith(
                        fontSize: 18,
                    ),textColor: appColorWhite,),
                    SizedBox(height: 2,),
                    AppText('You both get ₹100 with your referrals first  ',style: th.bodySmall?.copyWith(
                        fontSize: 8,fontWeight: FontWeight.w300
                    ),textColor: appColorWhite,),
                    SizedBox(height: 12,),
                    InkWell(
                      onTap: onPressed,
                      child: Container(
                        height: 29,
                        width: 105,
                        decoration: BoxDecoration(
                          color: appColorWhite,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16,right: 16),
                          child: Center(
                            child: AppText('Refer Now',style: th.labelLarge?.copyWith(
                                fontSize: 14,
                            ),textColor: appbottomtextColor,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //SvgPicture.asset('assets/GameButton/coininhand.svg'),
            Expanded(
                flex: 1,
                child: Image.asset('assets/GameButton/coininhand.png')),
          ],
        ),
      ),
    );
  }
}