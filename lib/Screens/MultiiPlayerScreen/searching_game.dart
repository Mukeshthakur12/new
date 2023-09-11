import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Screens/LoginScreen/resend.dart';
import 'searched_screen.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class SearchingPlayer extends StatelessWidget {
  const SearchingPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return  Container(
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
              bottom: 96,
              child: SvgPicture.asset('assets/Game/vs.svg')),



          SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60,),
                Image.asset('assets/GameButton/fruit.png'),
                SizedBox(height: 40,),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 70,
                  child: CustomCircularProgressBar(duration: 30, bColor: Color(0xffFFB811),
                      onTimeout: (){
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: SearchedPlayerScreen(),
                          withNavBar: false,
                          pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                        );
                      }),
                ),

                SizedBox(height: 0,),

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
                      SizedBox(width: 10,),
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
                SizedBox(height: 200,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Game/search.svg',color: appColorWhite,height: 30,),
                    AppText("Matching In Process...",style: th.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700,fontSize: 20
                    ),textColor: appColorWhite,),
                  ],
                ),              ],
            ),
          ),

        ],
      ),
    );
  }
}
