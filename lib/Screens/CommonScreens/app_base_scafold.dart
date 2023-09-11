import 'package:development/Screens/CommonScreens/notification_screen.dart';
import 'package:development/Screens/ProfileScreen/MenuScreen/WalletScreen/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../CustomWidgets/app_text.dart';
import '../../Utils/app_color.dart';
import '../ProfileScreen/MenuScreen/menu_screen.dart';
import '../ProfileScreen/profile_screen.dart';
import '../SignUpScreen/Signup.dart';



class BaseAppScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  const BaseAppScaffold({Key? key,required this.title, required this.child}) : super(key: key);

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
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Container(

                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 4,),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                    onTap: (){
                                      PersistentNavBarNavigator.pushNewScreen(
                                        context,
                                        screen: MenuScreen(),
                                        withNavBar: false,
                                        pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                      );
                                    },
                                    child: Image.asset('assets/profile/profile.png',height: 50))),
                              SizedBox(width: 2,),
                              Expanded(
                                flex:2,
                                child: InkWell(
                                  onTap: (){
                                    PersistentNavBarNavigator.pushNewScreen(
                                      context,
                                      screen: Signup(),
                                      withNavBar: false,
                                      pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                    );
                                  },
                                  child: AppText.white(title,style: th.bodyMedium?.copyWith(
                                    fontSize: 14
                                  ),textColor: sharewhitetext,),
                                ),
                              ),
                              Container(
                                    width: 105,
                                    child: Stack(
                                      children: [
                                        Container(
                                      width: 90,
                                      height: 40,
                                      padding: EdgeInsets.symmetric(horizontal: 2,vertical: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: buttonBgColor,
                                      ),
                                      child: Center(
                                          child: ShaderMask(
                                            blendMode: BlendMode.srcIn,
                                            shaderCallback: (Rect bounds) {
                                              return const LinearGradient(
                                                colors: [Colors.yellow, Colors.orange], // Replace with your desired gradient colors
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                              ).createShader(bounds);
                                            },
                                            child:   Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SvgPicture.asset('assets/Game/wallet.svg',height: 20,),
                                                SizedBox(width: 4), // Add some spacing between the Icon and AppText
                                                AppText(
                                                  "₹5000",
                                                  style: th.bodyMedium?.copyWith(
                                                      fontSize: 14
                                                  ),
                                                  textColor: Colors.white, // Set the text color to white
                                                ),
                                              ],
                                            ),
                                          ),

                                      ),
                                    ),
                                        Positioned(
                                            right: 3,
                                            bottom: 9,
                                            child: InkWell(
                                              onTap: (){
                                                PersistentNavBarNavigator.pushNewScreen(
                                                    context,
                                                    screen: WalletScreen(),
                                                withNavBar: false,
                                                pageTransitionAnimation:
                                                PageTransitionAnimation.cupertino,
                                                );
                                              },
                                              child: const CircleAvatar(
                                                backgroundColor: appColorGreen,
                                                radius: 10,
                                          child:Center(child: Icon(Icons.add,color: appColorWhite,size: 16,)),
                                        ),
                                            ))
                                      ],
                                    ),
                                  ),

                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      PersistentNavBarNavigator.pushNewScreen(
                                        context,
                                        screen: NotificationScreen(),
                                        withNavBar: false,
                                        pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                      );
                                    },
                                    child: const CircleAvatar(
                                      backgroundColor: buttonBgColor,
                                      radius: 20,
                                      child: Icon(Icons.notifications_none_outlined,color:appColorWhite,
                                        size: 20,),
                                    ),
                                  )),

                            ],
                          ),
                          // AppText.grey('Login / Signup', style: th.labelSmall,)
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            body: Column(
              children: [

                Expanded(
                  child: child,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}