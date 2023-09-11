import 'dart:async';
import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/functions.dart';

class CustomRewardWidget extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  final Duration initialDuration;

  CustomRewardWidget({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.initialDuration,
  });

  @override
  _CustomRewardWidgetState createState() => _CustomRewardWidgetState();
}

class _CustomRewardWidgetState extends State<CustomRewardWidget> {
  late Timer _timer;
  Duration _remainingDuration = Duration.zero;
  bool _isTimeUp = false;

  @override
  void initState() {
    super.initState();
    _remainingDuration = widget.initialDuration;
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingDuration.inSeconds > 0) {
          _remainingDuration -= Duration(seconds: 1);
        } else {
          _timer.cancel();
          _isTimeUp = true;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerwidth = screenWidth * 0.50;
    final rcardwidth = screenWidth * 0.96;
    var th = Theme.of(context).textTheme;
    return  Container(
        height: 89,
        decoration: BoxDecoration(
            color: notificatiocardbg,
          border: Border.all(
            width: 1,
            color: appRewardBorder
          ),
          borderRadius: BorderRadius.circular(16),


        ),
        width: rcardwidth,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: ClipPath(
                clipper: SliceClipper(),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  child: Image.asset(
                    widget.imageUrl,
                    width: 86,
                    fit: BoxFit.fitWidth,
                    // width: 200,
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 85),
              width: containerwidth,
              padding: EdgeInsets.symmetric(vertical: 11,horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppText(
                    widget.title,
                    style:th.titleLarge?.copyWith(fontSize: 20),
                    textColor: appColorWhite,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 2),
                  Expanded(
                    child: AppText(widget.description,
                      style:th.bodyMedium?.copyWith(fontSize: 12,fontWeight: FontWeight.w400),
                      textColor: appColorWhite,
                      textAlign: TextAlign.left,),
                  ),
                ],
              ),
            ),

            Positioned(
              top :_isTimeUp? -1:0,
              right: _isTimeUp?-1:0,
              child: _isTimeUp
                  ? _buildRedDotAndCalmButton()
                  : _buildTimerContainer(),
            ),

            // Get button
            Positioned(
              bottom: 12,
              right: 16,
              child: _isTimeUp?
              InkWell(onTap: (){}, child: AppText('Claim Now',style:th.bodyMedium?.copyWith(),
                textColor: appSuccessShade,
              )):
              InkWell(
                onTap: () {
                  // Add your logic for the Get button here
                },
                child: Row(
                  children: [
                    AppText('View',
                      style:th.bodyMedium?.copyWith(fontSize: 12),
                      textColor: appColorWhite,
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 2,left: 4),
                        child: Icon(CupertinoIcons.chevron_right_circle,color:appColorWhite,size: 14,))
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }

  Widget _buildTimerContainer() {
    var th = Theme.of(context).textTheme;
    return ClipPath(
      clipper: SliceClipper1(),
      child: Container(
        width: 107,
        decoration: BoxDecoration(
          color: appTimeColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(0),
            bottomLeft: Radius.circular(6),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            AppText('End in',style:th.bodyMedium?.copyWith(fontSize: 14),textColor: appLabelColor,),
            Center(
              child: Text(formattedDuration(_remainingDuration),
                style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRedDotAndCalmButton() {
    return Container(
      margin: EdgeInsets.all(1),
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border:Border.all(
          color: Colors.white
        )
      ),
    );
  }
}

class SliceClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.85, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class SliceClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.height, size.width * 0.87);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.00); // Adjust the control points here
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
