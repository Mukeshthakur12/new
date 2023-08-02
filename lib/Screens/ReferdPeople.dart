import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class ReferedPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Expanded(
                  child: AppText(
                    'Total Referred',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    textColor: appWhiteShade,
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: AppText(
                    '200',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    textColor: appSuccessShade,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: AppText(
                    'User',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    textColor: sharewhitetext,
                  ),
                ),
                SizedBox(width: 12,),
                Expanded(
                  flex: 1,
                  child: AppText(
                    'Status',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    textColor: sharewhitetext,
                  ),
                ),
                SizedBox(width: 12,),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: AppText(
                      'Via',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      textColor: sharewhitetext,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true, // Added to allow the ListView to size itself based on its content
            itemCount: 9, // Replace with the number of items you want to display
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left:16.0,right: 16,top: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width - 3,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: appPrimaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Expanded( // Changed from Expanded to Flexible
                          flex: 2,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/Refer/share.svg',
                                width: 31,
                                height: 32,
                              ),
                              SizedBox(width: 5,),
                              AppText(
                                'User',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                textColor: sharewhitetext,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 12,),
                        Expanded( // Changed from Expanded to Flexible
                          flex: 1,
                          child: AppText(
                            'Status',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                            textColor: sharewhitetext,
                          ),
                        ),
                        SizedBox(width: 12,),
                        Expanded( // Changed from Expanded to Flexible
                          flex: 1,
                          child: SvgPicture.asset(
                            'assets/Refer/share.svg',
                            width: 31,
                            height: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 16,),
        ],
      ),
    );
  }
}
