import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class TransactionScreen extends StatelessWidget {
  get totalcash => '9999';
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
      body: Center(
        child: Container(
          color: appPrimaryColor,

          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: dummyData.length,
              itemBuilder: (context, index) {
                String? title = dummyData[index]['title'];
                String? date = dummyData[index]['date'];
                String? rupee = dummyData[index]['rupee'];

                return Column(
                  children: [
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                'assets/Transaction/rupee.svg',
                                 height: 33,
                                 // Align the SVG content to the center-left
                              ),
                              SizedBox(width: 10), // Add some spacing between the icon and the text
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AppText(
                                    title!,
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                                    textColor: appWhiteShade,
                                  ),
                                  AppText(
                                    date!,
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                    textColor: appwhiteshade,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Row(
                            children: [
                              AppText(
                                "+₹" + rupee!,
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                                textColor: appSuccessShade,
                              ),
                              SizedBox(width: 5,),
                              SvgPicture.asset('assets/Transaction/rupee.svg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Divider(
                      height: 1, // Set the height of the Divider to 1 logical pixel
                      thickness: 1,
                      color: walletdivider,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

}
