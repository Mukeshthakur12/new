import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../CustomWidgets/tappable_text.dart';
import '../../Utils/app_color.dart';
import '../ProfileScreen/instruction_screen.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  String selectedText = 'Daily';

  void _handleTextTap(String text) {
    setState(() {
      if (selectedText == text) {
        selectedText = '';
      } else {
        selectedText = text;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Container(
      color: appBgColor,
      child: Stack(
        children: [


          Positioned.fill(
              child:  SvgPicture.asset('assets/Game/backgrouund.svg',fit: BoxFit.fill,)
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              appBar:AppBar(
                automaticallyImplyLeading: true,
              backgroundColor: Colors.transparent,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back,size: 26,),
                        SizedBox(width: 8,),
                        AppText('Leaderboard',textColor: appColorWhite,),
                      ],
                    ),
                    Expanded(flex :0,child: Image.asset('assets/profile/logo.png',height: 26,width: 107,)),
                  ],
                ),
              ),
              body: Container(
                // height: 700,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Positioned(
                            top: -80,
                            // bottom: 100,
                            // left: -1,
                            // right: -1,
                            child: Container(
                              height: 500,
                              width: double.infinity,
                              // padding: EdgeInsets.only(bottom: 200),
                              child:
                              Center(child: SvgPicture.asset('assets/Game/leader_bg.svg')),
                            ),
                            ),
                        Positioned(

                          child:Container(
                              height: 320,
                              width: 400,
                              child:
                              SvgPicture.asset('assets/Game/leaderboard.svg')),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                // height: 54,

                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff4f3883),
                                      Color(0xffce03ef),

                                    ],
                                    stops: [1.0, 0.1],
                                  ),
                                  borderRadius: BorderRadius.circular(16),

                                ),
                                child: Container(
                                  margin: EdgeInsets.all(1),

                                  padding: EdgeInsets.only(left: defaultPadding*2),
                                  height: 51,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: buttonBgColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TappableText( isSelected: selectedText == 'Daily',
                                        onTap: _handleTextTap, text: 'Daily',),
                                      TappableText( isSelected: selectedText == 'Weekly',
                                        onTap: _handleTextTap, text: 'Weekly',),
                                      TappableText( isSelected: selectedText == 'Monthly',
                                        onTap: _handleTextTap, text: 'Monthly',),
                                      InkWell(
                                        onTap: (){
                                          PersistentNavBarNavigator.pushNewScreen(
                                            context,
                                            screen: InstructionScreen(),
                                            withNavBar: false,
                                            pageTransitionAnimation:
                                            PageTransitionAnimation.cupertino,
                                          );
                                        },
                                        child: Container(
                                          height: 51,
                                          width: 62,
                                          // margin: EdgeInsets.all(2),
                                          decoration: const BoxDecoration(
                                            color: appColorGreen,
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(16),
                                                topRight: Radius.circular(16)),

                                          ),
                                          child: Center(child: SvgPicture.asset('assets/Game/eye.svg',height: 26,)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 50,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: defaultPadding*3.5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Container(
                                      margin: EdgeInsets.only(top: 30,left: 20),

                                      child: Column(
                                        children: [
                                          CircleAvatar(radius: 26,
                                            backgroundColor: Colors.transparent,
                                            child: Image.asset('assets/profile/3rd.png'),
                                          ),
                                          Column(
                                            children: [
                                              AppText('Darrell ',style:th.bodyMedium?.copyWith(
                                                  fontWeight: FontWeight.w600,fontSize: 12
                                              ),textColor: Colors.white,),
                                              AppText('₹500 ',style:th.bodyMedium?.copyWith(
                                                  fontWeight: FontWeight.w600,fontSize: 12
                                              ),textColor: appColorGreen,),

                                              SizedBox(height: 24,)
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(bottom: 50),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Column(
                                                children:[
                                                  Container(
                                                    height:110,
                                                    child: Stack(
                                                      alignment: Alignment.center,
                                                      children: [
                                                         Image.asset('assets/profile/1st.png', width: 86, height: 86),

                                                        Positioned(
                                                          top: -5, // Adjust the value to control the vertical position of the crown
                                                          child: Image.asset('assets/profile/crown.png', width: 50),
                                                        ),
                                                        Align(
                                                          alignment: Alignment.bottomCenter,
                                                          child: Row(
                                                            children: [
                                                              AppText('Darrell ',style:th.bodyMedium?.copyWith(
                                                                  fontWeight: FontWeight.w600,fontSize: 12
                                                              ),textColor: Colors.white,),
                                                              SizedBox(width: 4,),
                                                              Row(
                                                                children: [
                                                                  SvgPicture.asset('assets/profile/Cup.svg',
                                                                    color: Colors.yellow,),
                                                                  AppText('₹500 ',style:th.bodyMedium?.copyWith(
                                                                      fontWeight: FontWeight.w600,fontSize: 12
                                                                  ),textColor: winingColor,),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                ]

                                            ),
                                          ),
                                         // SizedBox(height: 4,),

                                        ],
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(top: 30,right: 20),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                              radius: 28,
                                              backgroundColor: Colors.transparent,
                                              child: Image.asset('assets/profile/2nd.png')),
                                          Column(
                                            children: [
                                              AppText('Darrell ',style:th.bodyMedium?.copyWith(
                                                  fontWeight: FontWeight.w600,fontSize: 12

                                              ),textColor: Colors.white,),
                                              AppText('₹500 ',style:th.bodyMedium?.copyWith(
                                                  fontWeight: FontWeight.w600,fontSize: 12
                                              ),textColor: appColorGreen,),
                                            ],
                                          ),
                                        ],
                                      )),

                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 80,),

                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: defaultPadding*2),

                                    child:  Row(
                                      children: [
                                        Expanded(
                                            flex:2,
                                            child: AppText('User',style:th.bodySmall,
                                              textColor: appLabelTextColor,)),
                                        Expanded(
                                            flex:1,
                                            child: AppText('Rank',style:th.bodySmall,textColor: appLabelTextColor)),
                                        Expanded(
                                            flex:1,
                                            child: AppText('Amount',style:th.bodySmall,
                                                textColor: appLabelTextColor)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 11,vertical: 9),
                                    padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 9),
                                    height: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color:gameinfocard,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              children: [
                                                Image.asset('assets/Game/L_profile.png'),
                                                SizedBox(width: 5,),
                                                AppText('Jenny ',style:th.bodyMedium,textColor: appColorWhite,),
                                              ],
                                            )),
                                        Expanded(
                                            flex:1,
                                            child: AppText('4',style:th.bodyMedium?.copyWith(
                                                fontSize: 13
                                            ),textColor: appColorWhite,textAlign: TextAlign.right,)),
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset('assets/GameButton/trophy.svg'),
                                                AppText(' ₹10,000',style:th.bodyLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 18),textColor: appColorWhite,
                                                  textAlign: TextAlign.right,),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 11,vertical: 9),
                                    padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 9),
                                    height: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color:gameinfocard,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              children: [
                                                Image.asset('assets/Game/L_profile.png'),
                                                SizedBox(width: 5,),
                                                AppText('Jenny ',style:th.bodyMedium,textColor: appColorWhite,),
                                              ],
                                            )),
                                        Expanded(
                                            flex:1,
                                            child: AppText('4',style:th.bodyMedium?.copyWith(
                                                fontSize: 13
                                            ),textColor: appColorWhite,textAlign: TextAlign.right,)),
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset('assets/GameButton/trophy.svg'),
                                                AppText(' ₹10,000',style:th.bodyLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 18),textColor: appColorWhite,
                                                  textAlign: TextAlign.right,),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 11,vertical: 9),
                                    padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 9),
                                    height: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color:gameinfocard,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              children: [
                                                Image.asset('assets/Game/L_profile.png'),
                                                SizedBox(width: 5,),
                                                AppText('Jenny ',style:th.bodyMedium,textColor: appColorWhite,),
                                              ],
                                            )),
                                        Expanded(
                                            flex:1,
                                            child: AppText('4',style:th.bodyMedium?.copyWith(
                                                fontSize: 13
                                            ),textColor: appColorWhite,textAlign: TextAlign.right,)),
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset('assets/GameButton/trophy.svg'),
                                                AppText(' ₹10,000',style:th.bodyLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 18),textColor: appColorWhite,
                                                  textAlign: TextAlign.right,),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 11,vertical: 9),
                                    padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 9),
                                    height: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color:gameinfocard,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              children: [
                                                Image.asset('assets/Game/L_profile.png'),
                                                SizedBox(width: 5,),
                                                AppText('Jenny ',style:th.bodyMedium,textColor: appColorWhite,),
                                              ],
                                            )),
                                        Expanded(
                                            flex:1,
                                            child: AppText('4',style:th.bodyMedium?.copyWith(
                                                fontSize: 13
                                            ),textColor: appColorWhite,textAlign: TextAlign.right,)),
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset('assets/GameButton/trophy.svg'),
                                                AppText(' ₹10,000',style:th.bodyLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 18),textColor: appColorWhite,
                                                  textAlign: TextAlign.right,),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 11,vertical: 9),
                                    padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 9),
                                    height: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color:gameinfocard,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              children: [
                                                Image.asset('assets/Game/L_profile.png'),
                                                SizedBox(width: 5,),
                                                AppText('Jenny ',style:th.bodyMedium,textColor: appColorWhite,),
                                              ],
                                            )),
                                        Expanded(
                                            flex:1,
                                            child: AppText('4',style:th.bodyMedium?.copyWith(
                                                fontSize: 13
                                            ),textColor: appColorWhite,textAlign: TextAlign.right,)),
                                        Expanded(
                                            flex:3,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset('assets/GameButton/trophy.svg'),
                                                AppText(' ₹10,000',style:th.bodyLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 18),textColor: appColorWhite,
                                                  textAlign: TextAlign.right,),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            )

                          ],
                        ),

                      ],
                    ),
                  ),
                  )),
        ],
      ),
    );
    }

}