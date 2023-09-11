import 'package:development/CustomWidgets/app_text.dart';
import 'package:development/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class CustomCircularProgressBar extends StatefulWidget {
  final int duration;
  final Color bColor;
  final Function() onTimeout;

  CustomCircularProgressBar({required this.duration,required this.bColor, required this.onTimeout});

  @override
  _CircularProgressBarState createState() => _CircularProgressBarState();
}

class _CircularProgressBarState extends State<CustomCircularProgressBar> {
  late Timer _timer;
  double _progress = 1.0;
  int _remainingSeconds = 0;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.duration;
    _startTimer();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _progress = _remainingSeconds / widget.duration;
          _remainingSeconds--;
        } else {
          _timer.cancel();
          widget.onTimeout();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Stack(
      children: [
        Container(
          height: 35,
          width: 35,
          child: CircularProgressIndicator(
            value: _progress,
            color: widget.bColor,
          ),
        ),

        Positioned(
            top: 8,
            left: 6,
            right: 6,
            child: Center(child: AppText('$_remainingSeconds',style:th.bodyMedium,textColor: appColorWhite,))),
      ],
    );
  }
}

