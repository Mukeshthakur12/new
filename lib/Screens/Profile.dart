import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class ProfileScreen extends StatelessWidget {
  get totalcash => '9999';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Container(
          color: appPrimaryColor,
          child: Column(
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
                                  height: 292,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF44284C),
                                    borderRadius: BorderRadius.circular(16),
                                    shape: BoxShape.rectangle, // Set the shape to rectangle
                                    border: Border.fromBorderSide(
                                      BorderSide(
                                        width: 0.50,
                                        style: BorderStyle.solid,
                                      ),

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
                                            child: SvgPicture.asset(
                                              'assets/Menu/policies.svg', // Replace with the path to your SVG file
                                              height: 130, // Adjust the height of the SVG image as needed
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
                                              child: SvgPicture.asset(
                                                'assets/Menu/policies.svg', // Replace with the path to your SVG file
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
                                      AppText('Madan Maddy',style: TextStyle(
                                          fontSize: 20,fontWeight: FontWeight.w700
                                      ),textColor: appWhiteShade,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset('assets/GameButton/bonous.svg',height: 42,width: 21,),
                                          SizedBox(width: 5,),
                                          AppText('Level : 108',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),textColor: appWhiteShade,),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset('assets/Profile/win.svg'),
                                              SizedBox(width: 5,),
                                              AppText("Win",style: TextStyle(fontSize: 14,
                                                  fontWeight: FontWeight.w500),textColor: appColorWhite,),
                                            ],
                                          ),
                                          AppText("Missed",style: TextStyle(fontSize: 14,
                                              fontWeight: FontWeight.w500),textColor: appColorWhite,),
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
                                              color: appTimeColor,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                          FractionallySizedBox(
                                            alignment: Alignment.centerLeft,
                                            widthFactor: 4 / 10, // Using a smaller widthFactor to avoid overflow
                                            child: Container(
                                              height: 10,
                                              decoration: BoxDecoration(
                                                color: appColorGreen1,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    AppText('Quick Stats',style: TextStyle(
                        fontSize: 26,fontWeight: FontWeight.w900
                    ),textColor: appWhiteShade,),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/Profile/played.svg'),
                              SizedBox(height: 5,),
                              AppText('Game Played',style: TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.w500
                              ),textColor: appWhiteShade,),
                              //SizedBox(height: ,),
                              AppText('${totalcash.toString()}',style: TextStyle(
                                  fontSize: 26,fontWeight: FontWeight.w900
                              ),textColor: appWhiteShade,),
                            ],
                          ),
                        ),
                        SizedBox(width: 16,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/Profile/won.svg'),
                              SizedBox(height: 5,),
                              AppText('Game Won',style: TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.w500
                              ),textColor: appWhiteShade,),
                              //SizedBox(height: ,),
                              AppText('${totalcash.toString()}',style: TextStyle(
                                  fontSize: 26,fontWeight: FontWeight.w900
                              ),textColor: appWhiteShade,),
                            ],
                          ),
                        ),
                        SizedBox(width: 16,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/Profile/earned.svg'),
                              SizedBox(height: 5,),

                              AppText('Total Earned',style: TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.w500
                              ),textColor: appWhiteShade,),
                              //SizedBox(height: ,),
                              AppText('${totalcash.toString()}',style: TextStyle(
                                  fontSize: 26,fontWeight: FontWeight.w900
                              ),textColor: appWhiteShade,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
