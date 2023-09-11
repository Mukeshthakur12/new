import 'package:development/CustomWidgets/app_button.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../CustomWidgets/app_text.dart';
import '../../CustomWidgets/refer_and_earn.dart';
import '../../Utils/app_color.dart';
import '../CommonScreens/back_button_scalfold.dart';
import '../ReferScreen/Component/button.dart';
import '../ReferScreen/refer_screen.dart';
import 'GameHistory/game_history_screen.dart';
class ProfileScreen extends StatelessWidget {
  get totalcash => '9999';

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    final width= MediaQuery.of(context).size.width;
    final buttonwidth=width*0.3;
    final buttonwidth2=width*0.24;

    return BackButtonScalfold(
      title: 'Profile',
      child: SingleChildScrollView(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 347, // Set a specific height for the container
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 347,
                        child: Stack(
                          children: [
                            // First Container Widget (Background)
                            Positioned(
                              left: 0,
                              top: 55,
                              right: 0,
                              child: Container(
                                height: 286,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Color(0xffCE03EF).withOpacity(.1),
                                      Color(0xff4F3B83).withOpacity(1),
                                    ],
                                  ),
                                ),

                                child: Container(
                                  margin: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF44284C),
                                    borderRadius: BorderRadius.circular(16),
                                    shape: BoxShape.rectangle, // Set the shape to rectangle
                                  ),
                                ),
                              ),
                            ),
                            // Second Container Widget (Container with Two Circular Images)
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 138,
                                  height: 138,
                                  child: Stack(
                                    children: [
                                      // Larger Circular Image
                                      Container(
                                        width: 138,
                                        height: 138,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(69), // Half of the width/height for a circle
                                          gradient: LinearGradient(
                                            colors: [profilerimgeboredr1, profilerimgeboredr2], // Replace with your desired gradient colors
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/profile/profile.png', // Replace with the path to your SVG file
                                            height: 136, // Adjust the height of the SVG image as needed
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      // Smaller Circular Image
                                      Positioned(
                                        left: 94,
                                        top: 103,
                                        child: Container(
                                          width: 34,
                                          height: 34,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(17), // Half of the width/height for a circle
                                            gradient: LinearGradient(
                                              colors: [profilerflag1, profilerflag2], // Replace with your desired gradient colors
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/profile/flag.png', // Replace with the path to your SVG file
                                              height: 32, // Adjust the height of the SVG image as needed
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 140,
                              right: 0,
                              left: 0,
                              child: Container(
                                margin: EdgeInsets.only(left: 16,right: 16,top: 12),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        AppText('Madan Maddy',style: th.labelLarge?.copyWith(
                                          fontSize: 20,
                                        ),textColor: appWhiteShade,),
                                        SizedBox(width: 4,),
                                        SvgPicture.asset('assets/profile/edit.svg',),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset('assets/profile/badge.svg',),
                                        SizedBox(width: 5,),
                                        AppText('Level : 108',style: th.bodyMedium,
                                          textColor: sharewhitetext,),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset('assets/profile/win.svg'),
                                            SizedBox(width: 5,),
                                            AppText("Win",style: th.bodyMedium?.copyWith(
                                              fontSize: 13,
                                            )
                                              ,textColor: appColorWhite,),
                                          ],
                                        ),
                                        AppText("Missed",style: th.bodyMedium,
                                          textColor: appColorWhite,),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 10,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        Container(
                                          height: 10,
                                          decoration: BoxDecoration(
                                            color: appLabelTextColor,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        FractionallySizedBox(
                                          alignment: Alignment.centerLeft,
                                          widthFactor: 4 / 10, // Using a smaller widthFactor to avoid overflow
                                          child: Container(
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Color(0xff3AF384),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 24,),
                                    Container(
                                        margin: EdgeInsets.symmetric(horizontal: 60),
                                        child:
                                        AppGredientButton(text: 'View Games History', onTap: (){
                                          PersistentNavBarNavigator.pushNewScreen(
                                            context,
                                            screen: GameHistoryScreen(),
                                            withNavBar: false,
                                            pageTransitionAnimation:
                                            PageTransitionAnimation.cupertino,
                                          );
                                        },width: 165,height: 46,gradientColors: [Color(0xff240044).withOpacity(0.5), Color(0xffFFFFFF).withOpacity(0.5),],),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppGredientButton(text: 'Edit Profile', onTap: (){},width: buttonwidth,height: 38,gradientColors: [Color(0xffCE03EF).withOpacity(0.2), Color(0xff4F3B83).withOpacity(1)],),
                  AppGredientButton(text: 'Friends', onTap: (){},width: buttonwidth2,height: 38,gradientColors: [Color(0xffCE03EF).withOpacity(0.2), Color(0xff4F3B83).withOpacity(1)],),
                  AppGredientButton(text: 'Share Profile', onTap: (){},width: buttonwidth,height: 38,gradientColors: [Color(0xffCE03EF).withOpacity(0.2), Color(0xff4F3B83).withOpacity(1)],),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  AppText('Quick Stats',style: th.headlineLarge?.copyWith(
                    fontSize: 24,
                  ),textColor: appWhiteShade,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/profile/played.svg'),
                            SizedBox(height: 5,),
                            AppText('Game Played',style: th.bodySmall?.copyWith(fontSize: 12,fontWeight: FontWeight.w400)
                              ,textColor: appWhiteShade,),
                            //SizedBox(height: ,),
                            AppText('${totalcash.toString()}',style: th.titleLarge?.copyWith(
                                fontSize: 24,fontWeight: FontWeight.w900
                            ),textColor: appWhiteShade,),
                          ],
                        ),
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/profile/won.svg'),
                            SizedBox(height: 5,),
                            AppText('Game Won',style: th.bodySmall
                              ,textColor: appWhiteShade,),
                            //SizedBox(height: ,),
                            AppText('${totalcash.toString()}',style: th.titleLarge?.copyWith(
                                fontSize: 24,fontWeight: FontWeight.w900
                            ),textColor: appWhiteShade,),
                          ],
                        ),
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/profile/earned.svg'),
                            SizedBox(height: 5,),

                            AppText('Total Earned',style: th.bodySmall,textColor: appWhiteShade,),
                            //SizedBox(height: ,),
                            AppText('${totalcash.toString()}',style: th.titleLarge?.copyWith(
                                fontSize: 24,fontWeight: FontWeight.w900
                            ),textColor: appWhiteShade,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 32,),
            //Image.asset('assets/profile/ad.png'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(

                //width: 200,Set the width of the container
                width: double.infinity,
                height: 144, // Set the height of the container
                //color: Colors.blue[200],
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [refercard1, refercard2], // Set the colors for the gradient
                    begin: Alignment.centerLeft, // Set the starting point of the gradient
                    end: Alignment.centerRight, // Set the ending point of the gradient
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),// Set the background color of the container
                child: Stack(
                  children: [
                    Positioned(
                      //top: 0, // Set the position from the top
                      left: 0,
                      //right: 0,
                      bottom: 0,// Set the position from the left
                      child: SvgPicture.asset(
                        'assets/Refer/cross.svg', // Replace with the path to your second image
                        width: 485, // Set the width of the image
                        height: 89, // Set the height of the image
                      ),
                    ),
                    // First image
                    Positioned(
                      //left: 182,
                      right: -17,
                      top: -25, // Set the position from the left
                      child: Image.asset(
                        'assets/Refer/celebrate.png', // Replace with the path to your first image
                        width: 194, // Set the width of the image
                        height: 194, // Set the height of the image
                      ),
                    ),

                    // Text
                    Positioned(
                      top: 32, // Set the position from the top
                      left: 21, // Set the position from the left
                      child: Container(
                        width: 156,
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              "Earn Upto ₹300",
                              style:th.titleLarge?.copyWith(fontSize: 20),
                              textColor: appWhiteShade,
                            ),
                            SizedBox(height: 8,),
                            AppText(
                              "by sharing Tento app with your friends",
                              style:th.titleSmall?.copyWith(fontSize: 12),
                              textColor: appWhiteShade,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText('Your Referrals',style: th.bodyMedium?.copyWith(
                  fontSize: 14,
                ),textColor: appWhiteShade,),
                SizedBox(width: 6,),
                AppText('0',style: th.bodyMedium?.copyWith(
                  fontSize: 14,
                ),textColor: appWhiteShade,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: mybutton(context,"Refer Now & Earn",true,false),
            ),
          ],
        ),
      ),
    );
  }
}