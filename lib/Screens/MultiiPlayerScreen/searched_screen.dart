import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Screens/LoginScreen/resend.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SearchedPlayerScreen extends StatelessWidget {
  const SearchedPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF18002E),
            Color(0xFF001300),
            Color(0xFF18002E),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      // padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Stack(
        children: [

          Positioned(
              left: -1,
              right: -1,
              top: 280,
              bottom: -206,
              child: Image.asset('assets/Game/gl.png')),

          Positioned(
              left: -1,
              right: -1,
              // top: -350,
              // bottom: -100,
              child: Image.asset('assets/Game/image_bg.png',fit: BoxFit.fill,)),

          Positioned.fill(

              child: SvgPicture.asset('assets/Game/backgrouund.svg',fit: BoxFit.cover,)),

          Positioned(
              left: 80,
              right: 80,
              top: 0,
              bottom: 60,
              child: SvgPicture.asset('assets/Game/vs2.svg')),


          SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60,),
                Image.asset('assets/GameButton/fruit.png'),
                SizedBox(height: 40,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(76)),
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
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(72),
                        color: gameinfocard

                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 6),
                    child: AppText('30 sec for seacrh...',style: th.bodyMedium,textColor: appColorWhite,),
                  ),
                ),
                SizedBox(height: 50,),

                Container(
                  // padding: EdgeInsets.symmetric(horizontal: defaultPadding*2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            child: Image.asset('assets/profile/profile.png',fit: BoxFit.fill,),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 70,
                            width: 160,
                            child: Stack(
                              children: [
                                Positioned(
                                  right:15,
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: SvgPicture.asset(
                                    'assets/Game/left_bg.svg',
                                    width: 0,
                                    height: 55,
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(right: 30),
                                    child: Center(child: AppText("1084E69CF",style: th.bodyLarge,textColor: appColorWhite,)))
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 0,),
                      Column(

                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            child: Image.asset('assets/profile/profile.png',fit: BoxFit.fill,),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 70,
                            width: 160,
                            child: Stack(
                              children: [
                                Positioned(
                                  right:0,
                                  left: 10,
                                  top: 0,
                                  bottom: 0,
                                  child: SvgPicture.asset(
                                    'assets/Game/bg.svg',
                                    width: 0,
                                    height: 55,
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 3),
                                    child: Center(child: AppText("Searching",style: th.bodyLarge,textColor: appColorWhite,)))
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 120,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Game/search.svg',color: appColorWhite,height: 30,),
                    SizedBox(width: 5,),
                    AppText("Matching In Process...",style: th.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700,fontSize: 20
                    ),textColor: appColorWhite,),
                  ],
                ),
                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding*2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: gameinfocard,
                      border: Border.all(
                        width: 0.3,
                        color: appColorWhite,
                      )
                  ),
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/profile/logo.png',height: 26,width: 102,),
                            AppText(' Tips',style: th.bodyLarge,textColor: appColorWhite,)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      AppText('You need to be on this screen to play the game. '
                          'If you have any issue with the question game,'
                          ' please take a screenshot and email to support@tento.in',style: th.bodyMedium,textColor: appColorWhite,)
                    ],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
