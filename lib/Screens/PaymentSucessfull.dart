import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class PaymentSucessfull extends StatelessWidget {
  get totalcash => 699;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Menu Screen'),
      ),
      body: Container(
        color:Color(0xff0000000) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child:Image.asset('assets/sucessful/sucess.png'),
            ),
            SizedBox(height: 18,),
               Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    AppText('Money Withdraw Successfully',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),textColor: appColorWhite,textAlign: TextAlign.center,),
                  ],
                ),
              ),
            SizedBox(height: 12,),
               Padding(
                padding:  EdgeInsets.only(left:12.0,right:12,),
                child: Column(
                  children: [
                    AppText('Within 24 hours money will credit in you bank account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),textColor: appWhiteShade,textAlign: TextAlign.center,),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
