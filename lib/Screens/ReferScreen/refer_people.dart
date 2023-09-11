import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../CustomWidgets/app_text.dart';
import '../../Utils/app_color.dart';
class ReferPeople {
  final String logoPath;
  final String Name;
  final String platpath;

  ReferPeople(this.logoPath, this.Name, this.platpath);
}
class ReferedPeople extends StatelessWidget {
  List<ReferPeople> referpeopleList=[
    ReferPeople('assets/profile/1st.png', 'Darrell ', 'assets/Refer/fb.png'),
    ReferPeople('assets/profile/2nd.png', 'Darrell ', 'assets/Refer/wb.png'),
    ReferPeople('assets/profile/3rd.png', 'Darrell ', 'assets/Refer/fb.png'),
    ReferPeople('assets/profile/1st.png', 'Darrell ', 'assets/Refer/wb.png'),
    ReferPeople('assets/profile/2nd.png', 'Darrell ', 'assets/Refer/wb.png'),
    ReferPeople('assets/profile/1st.png', 'Darrell ', 'assets/Refer/wb.png'),
    ReferPeople('assets/profile/3rd.png', 'Darrell ', 'assets/Refer/tel.png'),
    ReferPeople('assets/profile/1st.png', 'Darrell ', 'assets/Refer/tel.png'),
    ReferPeople('assets/profile/2nd.png', 'Darrell ', 'assets/Refer/fb.png'),
    ReferPeople('assets/profile/3rd.png', 'Darrell ', 'assets/Refer/tel.png'),
    ReferPeople('assets/profile/3rd.png', 'Darrell ', 'assets/Refer/tel.png'),
  ];
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return OtherScafold(
      title: 'Referred people',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Expanded(
                    child: AppText(
                      'Total Referred',
                      style: th.labelLarge?.copyWith(fontSize: 16),
                      textColor: appWhiteShade,
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: AppText(
                      '200',
                      style: th.labelLarge?.copyWith(fontSize: 16),
                      textColor: appSuccessShade,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0,right: 22,bottom: 6),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: AppText(
                      'User',
                      style: th.bodySmall?.copyWith(),
                      textColor: sharewhitetext,
                    ),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    flex: 1,
                    child: AppText(
                      'Status',
                      style: th.bodySmall?.copyWith(),
                      textColor: sharewhitetext,
                    ),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: AppText(
                        'Via',
                        style: th.bodySmall?.copyWith(),
                        textColor: sharewhitetext,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true, // Added shrinkWrap to limit the ListView's height
              physics: NeverScrollableScrollPhysics(),
              itemCount: referpeopleList.length, // Replace with the number of items you want to display
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left:12.0,right: 16,top: 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: appPrimaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 8),
                      child: Row(
                        children: [
                          Expanded( // Changed from Expanded to Flexible
                            flex: 2,
                            child: Row(
                              children: [
                                Image.asset(
                                  referpeopleList[index].logoPath,
                                  width: 31,
                                  height: 32,
                                ),
                                SizedBox(width: 5,),
                                AppText(
                                  referpeopleList[index].Name,
                                  style: th.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                                  textColor: appColorWhite,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 12,),
                          Expanded( // Changed from Expanded to Flexible
                            flex: 1,
                            child: AppText(
                              'Joined',
                              style: th.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                              textColor: appColorWhite,
                            ),
                          ),
                          SizedBox(width: 12,),
                          Expanded( // Changed from Expanded to Flexible
                            flex: 1,
                            child: Image.asset(
                              referpeopleList[index].platpath,
                              width: 35,
                              height: 37,
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
      ),
    );
  }
}