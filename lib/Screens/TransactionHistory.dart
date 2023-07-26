import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../CustomWidgets/app_text.dart';
import '../Utils/app_color.dart';

class TransactionScreen extends StatelessWidget {
  get totalcash => '9999';
  List<Map<String, String>> dummyData = [
    {'title': 'Item 1', 'date': '2023-07-28', 'rupee': '100'},
    {'title': 'Item 2', 'date': '2023-07-29', 'rupee': '200'},
    {'title': 'Item 3', 'date': '2023-07-30', 'rupee': '150'},
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) {
            String? title = dummyData[index]['title'];
            String? date = dummyData[index]['date'];
            String? rupee = dummyData[index]['rupee'];

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(title!),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 2,
                    child: Text(date!),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: Text(rupee!),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
