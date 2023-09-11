import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../CustomWidgets/app_text.dart';
import '../../../../Utils/app_color.dart';


class TransactionScreen extends StatefulWidget {
  TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  get totalcash => '9999';

  List<Map<String, String>> dummyData = [
    {'title': 'Item 1', 'date': '2023-07-28', 'rupee': '100'},
    {'title': 'Item 2', 'date': '2023-07-29', 'rupee': '200'},
    {'title': 'Item 3', 'date': '2023-07-30', 'rupee': '150'},
    {'title': 'Item 3', 'date': '2023-07-30', 'rupee': '150'},
    {'title': 'Item 3', 'date': '2023-07-30', 'rupee': '150'},
    {'title': 'Item 3', 'date': '2023-07-30', 'rupee': '150'},
    // Add more items as needed
  ];
  bool isClick=true;
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return OtherScafold(
      title: 'Transaction History',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 196,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(82),
                    color: appPrimaryColor
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            isClick=!isClick;
                          });
                        },
                        child: Container(
                          height: 28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(82),
                              gradient: isClick? LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  profilerimgeboredr1,
                                  profilerimgeboredr2,
                                ],
                              ):
                              LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              )
                          ),
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: defaultPadding,),
                              child: Center(child: AppText('Deposit',style: th.bodyMedium?.copyWith(),textColor: isClick?appColorWhite:applabelTextColor,))),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isClick=!isClick;
                        });
                      },
                      child: Container(
                        height: 28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(82),
                            gradient: isClick?LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                              ],
                            ): LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            profilerimgeboredr1,
                            profilerimgeboredr2,
                          ],
                        ),
                        ),
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: defaultPadding,),
                            child: Center(child: AppText('Withdraw ',style: th.bodyMedium?.copyWith(),textColor: isClick?applabelTextColor:appColorWhite,))),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 600,
                 child: isClick? ListView.builder(
                  itemCount: dummyData.length,
                  itemBuilder: (context, index) {
                    String? title = dummyData[index]['title'];
                    String? date = dummyData[index]['date'];
                    String? rupee = dummyData[index]['rupee'];

                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      'assets/Transaction/deposite.png',
                                      height: 60,
                                      width: 60,
                                      // Align the SVG content to the center-left
                                    ),
                                  ),
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
                        Divider(
                          height: 1, // Set the height of the Divider to 1 logical pixel
                          thickness: 1,
                          color: walletdivider,
                        ),
                      ],
                    );
                  },
                ):ListView.builder(
                   itemCount: dummyData.length,
                   itemBuilder: (context, index) {
                     String? title = dummyData[index]['title'];
                     String? date = dummyData[index]['date'];
                     String? rupee = dummyData[index]['rupee'];

                     return Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Expanded(
                               flex: 1,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset(
                                     'assets/Transaction/withdrwal.png',
                                     height: 60,
                                     width: 60,
                                     // Align the SVG content to the center-left
                                   ),
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
                                     textColor: sharewhitetext,
                                   ),
                                   SizedBox(width: 5,),
                                   SvgPicture.asset('assets/Transaction/rupee.svg'),
                                 ],
                               ),
                             ),
                           ],
                         ),
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
            ],
          ),
        ),
      ),
    );
  }

}