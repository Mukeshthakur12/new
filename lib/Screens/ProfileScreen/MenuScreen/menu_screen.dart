import 'package:development/CustomWidgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../CustomWidgets/app_text.dart';
import '../../../Utils/app_color.dart';
import '../../CommonScreens/back_button_scalfold.dart';
import '../../CommonScreens/other_scafold.dart';
import '../../Morescreens/ContactUs.dart';
import '../../Morescreens/policiy.dart';
import '../profile_screen.dart';
import 'WalletScreen/wallet_screen.dart';


class MenuScreen extends StatelessWidget {
  get totalcash => null;

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return BackButtonScalfold(

      title: 'Menu',

      child:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                  height:165, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
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
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 1,right: 1,top: 1),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          color: gameinfocard,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 0,
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(69), // Half of the width/height for a circle
                                    gradient: LinearGradient(
                                      colors: [profilerimgeboredr1, profilerimgeboredr2], // Replace with your desired gradient colors
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: Image.asset(
                                    'assets/profile/profile.png',
                                    height: 68,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppText('Madan Maddy',style: th.bodyLarge?.copyWith(fontSize: 20),
                                      textColor: appWhiteShade,),
                                    //SizedBox(height:,),
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/profile/badge.svg',),
                                        SizedBox(width: 5,),
                                        AppText('Level : 108',style: th.bodyMedium?.copyWith(),textColor: sharewhitetext,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16,),
                              Expanded(
                                  flex: 0,
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 4,),
                                      InkWell(
                                          onTap: (){
                                            PersistentNavBarNavigator.pushNewScreen(
                                              context,
                                              screen: ProfileScreen(),
                                              withNavBar: false,
                                              pageTransitionAnimation:
                                              PageTransitionAnimation.cupertino,
                                            );
                                          },
                                          child: Icon(CupertinoIcons.chevron_right_circle,color:appColorWhite,size: 25,)),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 1,right: 1,bottom: 1),

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
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        width: double.infinity,
                        height: 48,
                        child: Padding(
                          padding: const EdgeInsets.only(left:12,right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText('Amount Avalible',style: th.titleLarge?.copyWith(
                                  fontSize: 12,fontWeight: FontWeight.bold
                              ),textColor: appPrimaryColor,),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/widrwal/rupee.png',
                                    //height: 68,
                                    //fit: BoxFit.fill,
                                    height: 29,
                                    width: 29,
                                  ),
                                  SizedBox(width: 6,),
                                  AppText('₹${1000}',style: th.titleLarge?.copyWith(
                                      fontSize: 20,fontWeight: FontWeight.w900
                                  ),textColor: appPrimaryColor,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 16,),
          Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(

                            child: Column(
                              children: [
                                SvgPicture.asset('assets/Menu/rupee.svg'),
                                SizedBox(height: 8,),
                                AppText('Earn Money',style: th.headlineSmall?.copyWith(fontSize: 16),textColor: appWhiteShade,),
                              ],
                            ),
                          ),
                          SizedBox(height: 16,),
                          InkWell(
                            onTap: (){
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: PoliciesPage(),
                                withNavBar: false,
                                pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                              );
                            },
                            child: Column(
                              children: [
                                SvgPicture.asset('assets/Menu/policies.svg'),
                                SizedBox(height: 8,),
                                AppText('Policies',style: th.headlineSmall?.copyWith(fontSize: 16),textColor: appWhiteShade,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: WalletScreen(),
                                withNavBar: false,
                                pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                              );
                            },
                            child: Column(
                              children: [
                                SvgPicture.asset('assets/Menu/wallet.svg'),
                                SizedBox(height: 8,),
                                AppText('My Wallet',style: th.headlineSmall?.copyWith(fontSize: 16),textColor: appWhiteShade,),
                              ],
                            ),
                          ),
                          SizedBox(height: 16,),
                          InkWell(
                            onTap: (){
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: ContactUsPage(),
                                withNavBar: false,
                                pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                              );
                            },
                            child: Column(
                              children: [
                                SvgPicture.asset('assets/Menu/contact.svg'),
                                SizedBox(height: 8,),
                                AppText('Contact Us',style: th.headlineSmall?.copyWith(fontSize: 16),textColor: appWhiteShade,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/Menu/settings.svg'),
                          SizedBox(height: 8,),
                          AppText('Settings',style: th.headlineSmall?.copyWith(fontSize: 16),textColor: appWhiteShade,),
                        ],
                      ),
                    ),


                  ],
                ),
              )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: 61,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: LinearGradient(
                colors: [Color(0xffCE03EF).withOpacity(0.2), Color(0xff4F3B83).withOpacity(1)],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: gameinfocard,

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/Game/Logout.png',),
                  Icon(Icons.arrow_forward_rounded,color: appColorWhite,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}