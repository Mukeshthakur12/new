import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:development/Screens/MultiiPlayerScreen/game_entry_screen.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../CustomWidgets/game_card.dart';
import '../CommonScreens/multiplayer_scafold.dart';


class ItemData {
  final String svgpath;
  final String text;

  ItemData({required this.svgpath, required this.text});
}
class MultiPlayerScreen extends StatefulWidget {
  MultiPlayerScreen({super.key});
  _MultiPlayerScreenState createState() => _MultiPlayerScreenState();
}

class _MultiPlayerScreenState extends State<MultiPlayerScreen> {
   int selectedIndex = 0;

  final List<ItemData> itemList = [
    ItemData(svgpath: 'assets/ButtonBar/Quiz.svg', text: 'Quiz'),
    ItemData(svgpath: 'assets/ButtonBar/simul.svg', text: 'Simulation'),
    ItemData(svgpath: 'assets/ButtonBar/puzzel.svg', text: 'Puzzle'),
    ItemData(svgpath: 'assets/ButtonBar/Quiz.svg', text: 'Action'),
    ItemData(svgpath: 'assets/ButtonBar/Quiz.svg', text: 'Brain'),
  ];

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    final List<String> imageList = [
      'assets/GameButton/image6.png',
      'assets/GameButton/image7.png',
      'assets/GameButton/image8.png',
      'assets/GameButton/image1.png',
      'assets/GameButton/image2.png',
      'assets/GameButton/image4.png',
      'assets/GameButton/image5.png',
      'assets/GameButton/image2.png',
      'assets/GameButton/image6.png',
      'assets/GameButton/image4.png',
      'assets/GameButton/image4.png',
      'assets/GameButton/image2.png',
      'assets/GameButton/image1.png',
      'assets/GameButton/image2.png',
      'assets/GameButton/image4.png',
    ];

    return MultiPlayerScafold(
      title: 'Multiplayer',
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView.builder(
                  itemCount: itemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    bool isSelected = index == selectedIndex;
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: buttonBgColor,
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index; // Update the selected index on tap
                          });
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              itemList[index].svgpath,
                              color: isSelected ? appGameBorder :  applabelTextColor,
                              height: 17,
                            ),
                            SizedBox(width: 4),
                            AppText.white(itemList[index].text,style: th.bodyLarge?.copyWith(fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                              textColor: isSelected ? appGameBorder : applabelTextColor,),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 7,),
              Container(
                // height: MediaQuery.of(context).size.height*0.74 ,
                padding: EdgeInsets.only(bottom: 20),

                child:GridView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 115
                    ),
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return GameButtonCard(
                        imageUrl: imageList[index],
                        buttonText: 'True or False',
                        onPressed: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: GameEntryScreen(imgurl: 'assets/GameButton/game.png',),
                            withNavBar: false,
                            pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                          );
                        }, borderColor: appGameBorder,
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
