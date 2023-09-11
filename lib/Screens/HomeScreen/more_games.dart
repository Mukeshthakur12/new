import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Screens/CommonScreens/other_scafold.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../CustomWidgets/game_card.dart';


class ItemData {
  final String svgpath;
  final String text;

  ItemData({required this.svgpath, required this.text});
}
class MoreGames extends StatefulWidget {
  final String title;
  MoreGames({Key? key, required this.title}) : super(key: key);

  @override
  _MoreGamesState createState() => _MoreGamesState();
}

class _MoreGamesState extends State<MoreGames> {
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
      'assets/GameButton/image1.png',
      'assets/GameButton/image2.png',
      'assets/GameButton/image4.png',
      'assets/GameButton/image3.png',
      'assets/GameButton/image2.png',
      'assets/GameButton/image1.png',
      'assets/GameButton/image4.png',
      'assets/GameButton/image4.png',
      'assets/GameButton/image2.png',
      'assets/GameButton/image1.png',
      'assets/GameButton/image3.png',
      'assets/GameButton/image4.png',
    ];
    return OtherScafold(
      title: widget.title,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            Container(
              height: 40,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    bool isSelected = index == selectedIndex;
                    return InkWell(
                        onTap: (){},
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),
                            margin: EdgeInsets.symmetric(vertical: 2,horizontal: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color:buttonBgColor,
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
                                  SizedBox(width: 4,),
                                  AppText.white(itemList[index].text,style: th.bodyLarge?.copyWith(fontSize: 14,
                                      fontWeight: FontWeight.w700
                                  ),
                                    textColor: isSelected ? appGameBorder : applabelTextColor,),
                                ],
                              ),
                            )));
                  }
              ),
            ),
            SizedBox(height: 7,),
            Container(
              height: 570,
              child:GridView.builder(
                scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 115
                  ),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return GameButtonCard(
                      imageUrl: imageList[index],
                      buttonText: 'True or False',
                      onPressed: () {}, borderColor: appPrimaryColor,
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
