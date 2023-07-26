import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/CustomSliceWidget.dart';
import '../../Utils/app_color.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: appBgColor,
        title: const AppText.white('Notification'),
      ),
      body: Container(
        margin: EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomRewardWidget(
                imageUrl: "assets/GameButton/reward.png",
                title: 'Daily Games',
                description: 'Rewards are available for premium users',
                initialDuration: Duration(minutes: 10), // Set the initial duration here
              ),
              SizedBox(height: 12,),
              CustomRewardWidget(
                imageUrl: "assets/GameButton/reward.png",
                title: 'Daily Games',
                description: 'Rewards are available for premium users',
                initialDuration: Duration(minutes: 10), // Set the initial duration here
              ),
              SizedBox(height: 12,),

              CustomRewardWidget(
                imageUrl: "assets/GameButton/reward.png",
                title: 'Daily Games',
                description: 'Rewards are available for premium users',
                initialDuration: Duration(seconds: 5), // Set the initial duration here
              ),
              SizedBox(height: 12,),

              CustomRewardWidget(
                imageUrl: "assets/GameButton/reward.png",
                title: 'Daily Games',
                description: 'Rewards are available for premium users',
                initialDuration: Duration(seconds: 40), // Set the initial duration here
              ),
              SizedBox(height: 12,),
              CustomRewardWidget(
                imageUrl: "assets/GameButton/reward.png",
                title: 'Daily Games',
                description: 'Rewards are available for premium users',
                initialDuration: Duration(minutes: 10), // Set the initial duration here
              ),

            ],
          ),
        ),
      ),
    );
  }
}
