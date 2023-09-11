import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_color.dart';

class PoliciesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: AppText('Policies',style: th.titleLarge
            ?.copyWith(fontSize: 20),
          textColor: appColorWhite,),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              'Privacy Policy', // Title for the Privacy Policy section
              style: th.titleMedium?.copyWith(fontSize: 18),
              textColor: appColorWhite,
            ),
            SizedBox(height: 8),
            Expanded(
              child: SingleChildScrollView(
                child: AppText(
                  // Your privacy policy text goes here
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                  style: th.bodySmall?.copyWith(),
                  textColor: appColorWhite,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}