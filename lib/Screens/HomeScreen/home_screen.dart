import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Screens/CommonScreens/notification_screen.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../CustomWidgets/TournmentCardwidget.dart';
import '../../CustomWidgets/game_card.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final controller = PageController(viewportFraction: 0.8);
  final _pageController = PageController(initialPage: 0);
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        title: InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
            child: Text('8466XPT5A')),

      ),
      body: Container(
        margin: EdgeInsets.all(12),

        // height: 200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 108,
                child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {

                    return Container(
                      height: 90,
                      color: Colors.red,
                    );
                  },
                  onPageChanged: (int index) {
                    _currentPageNotifier.value = index;
                  },

                ),
              ),
              SizedBox(height: 4,),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(
                  // paintStyle: PaintingStyle.stroke,
                    dotColor: Color(0xffD9D9D9),
                    activeDotColor: Color(0xff216A94),
                    dotHeight: 13,
                    dotWidth: 13),
                onDotClicked: (index) {
                  controller.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText('Popular Games',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                        textColor: appColorWhite,),
                        Row(
                          children: [
                            AppText('View All',style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w600
                            ),textColor: appColorWhite,),
                            Container(
                                padding: EdgeInsets.only(left: 4,),
                                child: Icon(CupertinoIcons.chevron_right_circle,color: appColorWhite,size: 14,))
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){

                        }),
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){

                        }),
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){

                        }),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText('Tournaments',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                        textColor: appColorWhite,),
                        Row(
                          children: [
                            AppText('View All',style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w600
                            ),textColor: appColorWhite,),
                            Container(
                                padding: EdgeInsets.only(left: 4,),
                                child: Icon(CupertinoIcons.chevron_right_circle,color: appColorWhite,size: 14,))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 180,
                      child: ListView.builder(
                        // scrollDirection: Axis.horizontal,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: TournmentCard(
                              priceMoney: '30000',
                              timeRemaining: Duration(minutes: 10),
                              entriesLeft: 5,
                              totalEntries: 30,
                              entryMoney: 20,
                              onEntryButtonPressed: () {},
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText('All Games',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                          textColor: appColorWhite,),
                        Row(
                          children: [
                            AppText('View All',style: TextStyle(
                                fontSize: 12,fontWeight: FontWeight.w600
                            ),textColor: appColorWhite,),
                            Container(
                                padding: EdgeInsets.only(left: 4,),
                                child: Icon(CupertinoIcons.chevron_right_circle,color: appColorWhite,size: 14,))
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){

                            }),
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){

                            }),
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){

                            }),
                      ],
                    )
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
