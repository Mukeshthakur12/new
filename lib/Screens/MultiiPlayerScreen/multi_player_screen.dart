import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/game_card.dart';

class MultiPlayerScreen extends StatelessWidget {
  const MultiPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: appBgColor,
        title: AppText.white('All games'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                  return InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),
                        margin: EdgeInsets.symmetric(vertical: 2,horizontal: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                           color:buttonBgColor,
                          ),
                          child: AppText.white("data")));
                }),
              ),
              SizedBox(height: 7,),
              Container(
                height: 700,
                child:GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of items in each row (3 items in each row)
                      crossAxisSpacing: 8, // Spacing between columns
                      mainAxisSpacing: 8, // Spacing between rows
                    ),
                    itemCount: 13,
                    itemBuilder: (context, index) {
                      return GameButtonCard(
                        imageUrl: 'assets/GameButton/image1.png',
                        buttonText: 'True or False',
                        onPressed: () {},
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
