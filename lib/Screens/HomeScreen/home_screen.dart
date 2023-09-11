import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/CustomWidgets/refer_and_earn.dart';
import 'package:development/Screens/CommonScreens/app_base_scafold.dart';
import 'package:development/Screens/CommonScreens/notification_screen.dart';
import 'package:development/Screens/HomeScreen/more_games.dart';
import 'package:development/Screens/HomeScreen/tournments.dart';
import 'package:development/Screens/QuizScreen/quizScreen.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../CustomWidgets/TournmentCardwidget.dart';
import '../../CustomWidgets/game_card.dart';
import '../MultiiPlayerScreen/game_entry_screen.dart';
import '../ReferScreen/refer_screen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final controller = PageController(viewportFraction: 0.8);
  final _pageController = PageController(initialPage: 0);
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return BaseAppScaffold(
      title: '8466XPT5A',

      child: Container(
        margin: EdgeInsets.all(12),

        // height: 200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 128,
                child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {

                    return ReferEarnCard(onPressed: (){

                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: QuizPage(),
                          withNavBar: false,
                          pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                        );
                    });
                  },
                  onPageChanged: (int index) {
                    _currentPageNotifier.value = index;
                  },

                ),
              ),
              SizedBox(height: 6,),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const ScrollingDotsEffect(
                  activeStrokeWidth: 2.6,
                    //dotColor: appColorWhite,
                  activeDotScale: 1.3,
                  maxVisibleDots: 5,
                  radius: 8,
                  spacing: 10,
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: appColorWhite,
                  strokeWidth: 2,
                    paintStyle : PaintingStyle.fill
                ),
                onDotClicked: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              SizedBox(height: 16,),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText('Popular Games',style:
                        th.titleLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 20),
                        textColor: appColorWhite,),
                        InkWell(
                          onTap: (){
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: MoreGames(title: 'Popular Games'),
                              withNavBar: false,
                              pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Row(
                            children: [
                              AppText('View All',style: th.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,fontSize: 12
                              ),textColor: appColorWhite,),
                              Container(
                                  padding: EdgeInsets.only(left: 4,),
                                  child: Icon(CupertinoIcons.chevron_right_circle,color: appColorWhite,size: 14,))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Row(
                      children: [
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image2.png', buttonText: 'True or False',
                            onPressed: (){

                        }, borderColor: appPrimaryColor,),
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image2.png', buttonText: 'True or False',
                            onPressed: (){
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: GameEntryScreen(imgurl: 'assets/GameButton/game.png',),
                                withNavBar: false,
                                pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                              );
                        }, borderColor: appPrimaryColor,),
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){

                        }, borderColor: appPrimaryColor,),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText('Tournaments',style:
                        th.titleLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 20),
                          textColor: appColorWhite,),
                        InkWell(
                          onTap: (){
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: Tournment(),
                              withNavBar: false,
                              pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Row(
                            children: [
                              AppText('View All',style: th.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 12
                          ),textColor: appColorWhite),
                              Container(
                                  padding: EdgeInsets.only(left: 4,),
                                  child: Icon(CupertinoIcons.chevron_right_circle,color: appColorWhite,size: 14,))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 180,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0),
                            child: TournmentCard(
                              priceMoney: '30000',
                              timeRemaining: Duration(minutes: 10),
                              entriesLeft: 5,
                              totalEntries: 30,
                              gradientColors: const [
                                Color(0xff320063),
                                Color(0xffA64EFF),
                              ],
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
              SizedBox(height: 16,),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText('All Games',style:
                        th.titleLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 20),
                          textColor: appColorWhite,),
                        InkWell(
                          onTap: (){
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: MoreGames(title: 'All Games'),
                              withNavBar: false,
                              pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Row(
                            children: [
                              AppText('View All',style: th.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,fontSize: 12
                              ),textColor: appColorWhite,),
                              Container(
                                  padding: EdgeInsets.only(left: 4,),
                                  child: Icon(CupertinoIcons.chevron_right_circle,color: appColorWhite,size: 14,))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Row(
                      children: [
                        
                         GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){

                            }, borderColor: appPrimaryColor,),
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){

                            }, borderColor: appPrimaryColor,),
                        GameButtonCard(
                            imageUrl: 'assets/GameButton/image1.png', buttonText: 'True or False',
                            onPressed: (){
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: GameEntryScreen(imgurl: 'assets/GameButton/game.png',),
                                withNavBar: false,
                                pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                              );
                            }, borderColor: appPrimaryColor,),
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
