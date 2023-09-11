import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_color.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: AppText('Contact Us',style: th.titleLarge
            ?.copyWith(fontSize: 20),
          textColor: appColorWhite,),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              'Get in Touch',
          style: th.titleLarge
              ?.copyWith(fontSize: 20),
          textColor: appColorWhite,),

            SizedBox(height: 16),
            AppText(
              'Feel free to reach out to us for any inquiries or feedback. We\'re here to help!',
              style: th.bodySmall
                  ?.copyWith(),
              textColor: appColorWhite,),
            SizedBox(height: 24),
            
          ],
        ),
      ),
    );
  }
}