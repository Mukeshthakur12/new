import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../CustomWidgets/app_text.dart';
import '../../Utils/app_color.dart';


class InstructionScreen extends StatelessWidget {
  List<Map<String, String>> dummyData = [
    {'title': 'Item 1', 'date': '2023-07-28', 'rupee': '100'},
    {'title': 'Item 2', 'date': '2023-07-29', 'rupee': '200'},
    {'title': 'Item 3', 'date': '2023-07-30', 'rupee': '150'},
    // Add more items as needed
  ];

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
          Positioned.fill(
              child:  Image.asset('assets/Game/leadernew_bg.png',fit: BoxFit.fitHeight,)
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar:AppBar(
              backgroundColor: Colors.transparent,
              title: AppText('How to Play Games',style: th.bodyMedium?.copyWith(fontWeight: FontWeight.w700,fontSize: 22),textColor: appColorWhite,),
            ),
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                        height:600, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
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
                          margin: EdgeInsets.all(1),
                          width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                          height: 600,//MediaQuery.of(context).size.height * 0.6, // set the height to 60% of the screen height
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: appPrimaryColor,

                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                AppText(
                                  "Instructions ",
                                  style: th.labelLarge?.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
                                  textColor: appWhiteShade,
                                ),
                                SizedBox(height: 8,),
                                AppText(
                                  "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. Bibendum faucibus sagittis nunc lectus sit elit. Luctus ornare cursus risus auctor in et. Tincidunt.",
                                  style: th.bodyMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                                  textColor: appWhiteShade,textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 8,),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 4, // Adjust the size of the dot as per your requirement
                                        height: 4, // Adjust the size of the dot as per your requirement
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white, // Replace this with the color you want for the dot
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 6,),
                                    Expanded(
                                      child: AppText(
                                        "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. ",
                                        style: th.bodyMedium?.copyWith(fontWeight: FontWeight.w300,),
                                        textColor: appWhiteShade,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 4, // Adjust the size of the dot as per your requirement
                                        height: 4, // Adjust the size of the dot as per your requirement
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white, // Replace this with the color you want for the dot
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 6,),
                                    Expanded(
                                      child: AppText(
                                        "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. ",
                                        style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w300,),
                                        textColor: appWhiteShade,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 4, // Adjust the size of the dot as per your requirement
                                        height: 4, // Adjust the size of the dot as per your requirement
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white, // Replace this with the color you want for the dot
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 6,),
                                    Expanded(
                                      child: AppText(
                                        "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. ",
                                        style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w300,),
                                        textColor: appWhiteShade,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 4, // Adjust the size of the dot as per your requirement
                                        height: 4, // Adjust the size of the dot as per your requirement
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white, // Replace this with the color you want for the dot
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 6,),
                                    Expanded(
                                      child: AppText(
                                        "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. ",
                                        style: th.bodyMedium?.copyWith( fontWeight: FontWeight.w300,),
                                        textColor: appWhiteShade,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                AppText(
                                  "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. Bibendum faucibus sagittis nunc lectus sit elit. Luctus ornare cursus risus auctor in et. Tincidunt.",
                                  style: th.bodyMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                                  textColor: appWhiteShade,textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}