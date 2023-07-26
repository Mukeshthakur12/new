import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/app_color.dart';
import 'app_text.dart';

class MoneyCard extends StatelessWidget {
  final String totalcash;
  final String winning;
  final String deposite;
  final String bonus;
  final VoidCallback onPressed;

  MoneyCard({

    required this.onPressed, required this.totalcash, required this.winning, required this.deposite, required this.bonus,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: referbackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFF7A00),
                  Color(0xFFFFBC11),
                ],
              ),

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            width: double.infinity,
            height: 89,
            child: Padding(
              padding: const EdgeInsets.only(top:17,bottom: 17,left: 19,right: 19),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText('Total Cash ',style: TextStyle(
                            fontSize: 12,fontWeight: FontWeight.w700
                        ),textColor: appPrimaryColor,),
                        //SizedBox(height: ,),
                        Row(
                          children: [
                            SvgPicture.asset('assets/GameButton/walletcoin.svg'),
                            SizedBox(width: 5,),
                            AppText('₹ ${totalcash.toString()}',style: TextStyle(
                                fontSize: 26,fontWeight: FontWeight.w900
                            ),textColor: appPrimaryColor,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Row(
                      children: [
                        AppText('History',style: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w400
                        ),textColor: appPrimaryColor,),
                        //SizedBox(width: 2,),
                        Icon(CupertinoIcons.right_chevron,size: 17,
                          color: appPrimaryColor,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(

            width: double.infinity,
            height: 177,
            decoration: BoxDecoration(
              color: appContestCardColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:26,bottom: 16,left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/GameButton/deposite.svg'),
                        SizedBox(height: 5,),
                        AppText('Total Deposit ',style: TextStyle(
                            fontSize: 12,fontWeight: FontWeight.w500
                        ),textColor: appWhiteShade,),
                        //SizedBox(height: ,),
                        AppText('₹ ${totalcash.toString()}',style: TextStyle(
                            fontSize: 26,fontWeight: FontWeight.w900
                        ),textColor: appWhiteShade,),
                      ],
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/GameButton/winning.svg'),
                        SizedBox(height: 5,),
                        AppText('Winning Cash',style: TextStyle(
                            fontSize: 12,fontWeight: FontWeight.w500
                        ),textColor: appWhiteShade,),
                        //SizedBox(height: ,),
                        AppText('₹ ${totalcash.toString()}',style: TextStyle(
                            fontSize: 26,fontWeight: FontWeight.w900
                        ),textColor: appWhiteShade,),
                      ],
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/GameButton/deposite.svg'),
                        SizedBox(height: 5,),

                        AppText('Total Deposit ',style: TextStyle(
                            fontSize: 12,fontWeight: FontWeight.w500
                        ),textColor: appWhiteShade,),
                        //SizedBox(height: ,),
                        AppText('₹ ${totalcash.toString()}',style: TextStyle(
                            fontSize: 26,fontWeight: FontWeight.w900
                        ),textColor: appWhiteShade,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
