import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:development/Screens/ReferScreen/refer_people.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../CustomWidgets/app_button.dart';
import '../../CustomWidgets/app_text.dart';
import '../../Utils/app_color.dart';
import '../CommonScreens/back_button_scalfold.dart';
import 'Component/button.dart';

class Refer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return BackButtonScalfold(
      title: 'Refer & Earn',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
              child: DottedBorder(
                dashPattern: [7, 5],
                strokeWidth: 1,
                color: sharewhitetext,
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                child: Container(
                  // width: 200,
                  height: 67,
                  color: gameinfocard, // Set the color of the container inside the border
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 21, left: 21),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                'Your referral code',
                                style:th.bodyMedium?.copyWith(fontSize: 12),
                                textColor: sharewhitetext,
                              ),
                              AppText(
                                'MADDYZ',
                                style:th.titleLarge?.copyWith(fontSize: 24),
                                textColor: appWhiteShade,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment.centerRight,
                          // height: 20,
                          width: .5,
                          color: sharewhitetext,
                        ),
                        SizedBox(width: 12,),
                        Expanded(
                          flex: 0,
                          child: Container(
                            alignment: Alignment.centerRight,
                            width: 48,
                            child: AppText(
                              'Copy Code',
                              style:th.bodyMedium?.copyWith(fontSize: 12),
                              textColor: sharewhitetext,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(27, 215, 65, 0.53),
                                  offset: Offset(0, 4),
                                  blurRadius: 24,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/Refer/wb.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(22, 121, 241, 0.40),
                                  offset: Offset(0, 4),
                                  blurRadius: 14,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/Refer/fb.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(37, 155, 215, 0.21),
                                  offset: Offset(0, 4),
                                  blurRadius: 11,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/Refer/tel.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ],
                      ),

                    Expanded(
                      flex:0,
                      child:mybutton(context,"More Option",true,false),
                    ),

                  ],
                )
            ),
            SizedBox(height: 16,),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16),
                child: AppText('Win Rewards in 3 simple steps',
                  style:th.titleLarge?.copyWith(fontSize: 22)
                  ,textColor: appWhiteShade,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                height:172, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFFFFFF).withOpacity(0.5),
                      Color(0xff240044).withOpacity(0.5),
                    ],
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width-3, // set the width to 80% of the screen width
                  height: 170,//MediaQuery.of(context).size.height * 0.6, // set the height to 60% of the screen height
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: appPrimaryColor,

                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              top: 30,
                              left: 60,
                              right: 60,
                              child: DottedBorder(
                                color: Colors.transparent, // Set to transparent since we're using gradient
                                strokeWidth: 2,
                                dashPattern: [5, 5], // 5pt dash followed by 5pt space
                                child: Container(
                                  width: double.infinity,
                                  height: 1, // Height of the line
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.red, Colors.blue], // Replace with your desired gradient colors
                                      stops: [0.0, 1.0],
                                    ),
                                  ),
                                ),
                              )
                            ),
                            Positioned(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,

                                children: [
                                  SvgPicture.asset(
                                    'assets/Refer/share.svg', // Replace with the path to your second image
                                    // Set the height of the image
                                  ),
                                  SvgPicture.asset(
                                    'assets/Refer/uses.svg', // Replace with the path to your second image
                                    // Set the height of the image
                                  ),
                                  SvgPicture.asset(
                                    'assets/Refer/rewards.svg', // Replace with the path to your second image
                                    // Set the height of the image
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [

                                AppText(
                                  'Your Share',
                                  style:th.bodyLarge?.copyWith(fontSize: 14),
                                  textColor: appColorWhite,
                                ),
                                SizedBox(height: 6,),

                                AppText(
                                  'Tento app',
                                  style:th.bodySmall?.copyWith(),
                                  textColor: sharewhitetext,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                AppText(
                                  'Friend Uses',
                                  style:th.bodyLarge?.copyWith(fontSize: 14),
                                  textColor: appColorWhite,
                                ),
                                SizedBox(height: 6,),

                                AppText(
                                  'Tento Games',
                                  style:th.bodySmall?.copyWith(),
                                  textColor: sharewhitetext,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                AppText(
                                  'You both get',
                                  style:th.bodyLarge?.copyWith(fontSize: 14),
                                  textColor: appColorWhite,
                                ),
                                SizedBox(height: 6,),
                                AppText(
                                  'Cash Rewards',
                                  style:th.bodySmall?.copyWith(),
                                  textColor: sharewhitetext,
                                ),
                              ],
                            ),
                          ],
                        ),


                      ],
                    ),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: CustomIconButton(
                svgImagePath: 'assets/Refer/people.svg',
                text: 'Referred people',
                onTap: (){
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: ReferedPeople(),
                    withNavBar: false,
                    pageTransitionAnimation:
                    PageTransitionAnimation.cupertino,
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      AppText(
                        "FAQ",
                        style:th.titleLarge?.copyWith(fontSize: 24),
                        textColor: appWhiteShade,
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: AppText(
                              "Cursus sit est mauris eros nibh egestas ac",
                              style:th.bodyMedium?.copyWith(),
                              textColor: appWhiteShade,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            flex: 0,
                            child: Icon(CupertinoIcons.right_chevron,size: 14,
                              color: appColorWhite,),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),

                      Row(
                        children: [
                          Expanded(
                            child: AppText(
                              "Cursus sit est mauris eros nibh egestas ac",
                              style:th.bodyMedium?.copyWith(),
                              textColor: appWhiteShade,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            flex: 0,
                            child: Icon(CupertinoIcons.right_chevron,size: 14,
                              color: appColorWhite,),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Expanded(
                            child: AppText(
                              "Cursus sit est mauris eros nibh egestas ac",
                              style:th.bodyMedium?.copyWith(),
                              textColor: appWhiteShade,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            flex: 0,
                            child: Icon(CupertinoIcons.right_chevron,size: 14,
                              color: appColorWhite,),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 12,),

          ],
        ),
      ),
    );
  }
}