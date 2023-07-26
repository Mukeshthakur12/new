import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class MenuScreen extends StatelessWidget {
  get totalcash => null;

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
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                  height:109, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                    width: MediaQuery.of(context).size.width-3, // set the width to 80% of the screen width
                    height: 107,//MediaQuery.of(context).size.height * 0.6, // set the height to 60% of the screen height
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: appPrimaryColor,

                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 0,
                            child:SvgPicture.asset('assets/GameButton/deposite.svg'),
                          ),
                          SizedBox(width: 16,),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText('Madan Maddy',style: TextStyle(
                                    fontSize: 20,fontWeight: FontWeight.w700
                                ),textColor: appWhiteShade,),
                                //SizedBox(height:,),
                                Row(
                                  children: [
                                    //SvgPicture.asset('assets/GameButton/bonous.svg',height: 42,width: 21,),
                                    SizedBox(width: 5,),
                                    AppText('Level : 108',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),textColor: appWhiteShade,),
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
                                Icon(CupertinoIcons.chevron_right_circle,color:appColorWhite,size: 25,),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
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
                            Column(
                              children: [
                                SvgPicture.asset('assets/Menu/rupee.svg'),
                                SizedBox(height: 8,),
                                AppText('Earn Money',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),textColor: appWhiteShade,),
                              ],
                            ),
                            SizedBox(height: 16,),
                            Column(
                              children: [
                                SvgPicture.asset('assets/Menu/policies.svg'),
                                SizedBox(height: 8,),
                                AppText('Policies',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),textColor: appWhiteShade,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset('assets/Menu/wallet.svg'),
                                SizedBox(height: 8,),
                                AppText('My Wallet',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),textColor: appWhiteShade,),
                              ],
                            ),
                            SizedBox(height: 16,),
                            Column(
                              children: [
                                SvgPicture.asset('assets/Menu/contact.svg'),
                                SizedBox(height: 8,),
                                AppText('Contact Us',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),textColor: appWhiteShade,),
                              ],
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
                            AppText('Settings',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),textColor: appWhiteShade,),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
      ),
    );
  }
}
