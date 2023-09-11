import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:development/Screens/HomeScreen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../CustomWidgets/app_text.dart';
import '../../../../Utils/app_color.dart';
import '../../../CommonScreens/bottom_nav_bar.dart';
class PaymentSucessfull extends StatelessWidget {
  get totalcash => 699;

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Stack(
      children: [
        Positioned.fill(
            child:  SvgPicture.asset('assets/Game/backgrouund.svg',fit: BoxFit.fill,)
        ),
        Scaffold(
          //color:Colors.transparent,
          body: Container(
           // color:Color(0xff0000000) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child:Image.asset('assets/sucessful/sucess.png'),
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      AppText('Money Withdraw Successfully',style: th.headlineLarge?.copyWith(
                      ),textColor: appColorWhite,
                        textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding:  EdgeInsets.only(left:12.0,right:12,),
                  child: Column(
                    children: [
                      AppText('Within 24 hours money will credit in you bank account',style: th.headlineSmall?.copyWith(fontSize: 20
                      ),textColor: appWhiteShade,textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                SizedBox(height: 80,),
                InkWell(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavbar()), // Replace HomeScreen with your home page
                          (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back,color: Colors.white,),
                      SizedBox(width: 5,),
                      AppText('Back to Home',style: th.titleLarge?.copyWith(fontSize: 18,fontWeight: FontWeight.w300),textColor: appWhiteShade,textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}