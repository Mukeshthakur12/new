import 'dart:async';
import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return  Container(
        height: 89,
        decoration: BoxDecoration(
            color: appCardColor,
          border: Border.all(
            width: 1,
            color: appColorWhite
          ),
          borderRadius: BorderRadius.circular(16),


        ),
        width: rcardwidth,
        child: Stack(
          children: [
            Positioned(
              left: -1,
              top: -1,
              bottom: -1,
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
              margin: EdgeInsets.only(left: 90),
              width: containerwidth,
              padding: EdgeInsets.symmetric(vertical: 11,horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(color:appColorWhite,fontSize: 20, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 2),
                  Expanded(
                    child: Text(widget.description,
                        style: TextStyle(color:appColorWhite,fontSize: 12, fontWeight: FontWeight.w500),
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
              bottom: 16,
              right: 16,
              child: _isTimeUp?
              InkWell(onTap: (){}, child: Text('Claim Now',style:
                TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appColorGreen),
              )):
              InkWell(
                onTap: () {
                  // Add your logic for the Get button here
                },
                child: Row(
                  children: [
                    Text('View',style:
                    TextStyle(color:appColorWhite,
                        fontSize: 14,fontWeight: FontWeight.w600)
                        ,),
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
    return ClipPath(
      clipper: SliceClipper1(),
      child: Container(
        width: 127,
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
          children: [
            AppText('End in',style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 10),textColor: appLabelColor,),
            Center(
              child: Text(
                '${_remainingDuration.inMinutes}:${(_remainingDuration.inSeconds % 60).toString().padLeft(2, '0')}',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
