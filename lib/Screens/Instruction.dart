import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class Instruction extends StatelessWidget {
  List<Map<String, String>> dummyData = [
    {'title': 'Item 1', 'date': '2023-07-28', 'rupee': '100'},
    {'title': 'Item 2', 'date': '2023-07-29', 'rupee': '200'},
    {'title': 'Item 3', 'date': '2023-07-30', 'rupee': '150'},
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        color:Color(0xff000000) ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: MediaQuery.of(context).size.width, // set the width to 80% of the screen width
                height:522, //MediaQuery.of(context).size.height * 0.8, // set the height to 80% of the screen height
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
                  height: 520,//MediaQuery.of(context).size.height * 0.6, // set the height to 60% of the screen height
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
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                          textColor: appWhiteShade,
                        ),
                        SizedBox(height: 8,),
                        AppText(
                          "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. Bibendum faucibus sagittis nunc lectus sit elit. Luctus ornare cursus risus auctor in et. Tincidunt.",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
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
                              color: Colors.red, // Replace this with the color you want for the dot
                            ),
                          ),
                        ),
                        SizedBox(width: 6,),
                        Expanded(
                          child: AppText(
                            "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. ",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300,),
                            textColor: appWhiteShade,textAlign: TextAlign.center,
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
                                  color: Colors.red, // Replace this with the color you want for the dot
                                ),
                              ),
                            ),
                            SizedBox(width: 6,),
                            Expanded(
                              child: AppText(
                                "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. ",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300,),
                                textColor: appWhiteShade,textAlign: TextAlign.center,
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
                                  color: Colors.red, // Replace this with the color you want for the dot
                                ),
                              ),
                            ),
                            SizedBox(width: 6,),
                            Expanded(
                              child: AppText(
                                "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. ",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300,),
                                textColor: appWhiteShade,textAlign: TextAlign.center,
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
                                  color: Colors.red, // Replace this with the color you want for the dot
                                ),
                              ),
                            ),
                            SizedBox(width: 6,),
                            Expanded(
                              child: AppText(
                                "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. ",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300,),
                                textColor: appWhiteShade,textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        AppText(
                          "Volutpat ut aenean molestie eu nisl pharetra tellus consectetur nulla. Bibendum faucibus sagittis nunc lectus sit elit. Luctus ornare cursus risus auctor in et. Tincidunt.",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
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
    );
  }

}
