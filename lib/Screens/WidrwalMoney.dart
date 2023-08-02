import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class WidrwalMoney extends StatelessWidget {
  get totalcash => 699;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Menu Screen'),
      ),
      body: Container(
        color:Color(0xfffffff) ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Container(
                      height: 169,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF311838),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            color: Colors.white.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/widrwal/winning.svg'),
                          SizedBox(height: 5,),
                          AppText('Total Winnings ',style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w500
                          ),textColor: appWhiteShade,),
                          //SizedBox(height: ,),
                          AppText('₹ ${totalcash.toString()}',style: TextStyle(
                              fontSize: 26,fontWeight: FontWeight.w900
                          ),textColor: appWhiteShade,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 14,),
                  Expanded(
                    flex:1,
                    child: Container(
                      height: 169,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF311838),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            color: Colors.white.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/widrwal/balance.svg'),
                          SizedBox(height: 5,),
                          AppText('Total Balance',style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w500
                          ),textColor: appWhiteShade,),
                          //SizedBox(height: ,),
                          AppText('₹ ${totalcash.toString()}',style: TextStyle(
                              fontSize: 26,fontWeight: FontWeight.w900
                          ),textColor: appWhiteShade,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: AppText('*Only Winnings can be withdrawn',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),textColor: appColorWhite,),
            ),
            SizedBox(height: 12,),
            Padding(
              padding:  EdgeInsets.only(left:12.0,right:12,top: 12),
              child: AppText('Enter Amount to Withdraw in Rs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),textColor: appColorWhite,),
            ),
            Padding(
              padding:  EdgeInsets.only(left:12.0,right:12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText('(Min 50/- Max 250/- in multiples of 50)',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),textColor: appWhiteShade,),
                  SizedBox(width: 4,),
                  Icon(CupertinoIcons.question_circle,size: 16,
                    color: appWhiteShade,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
