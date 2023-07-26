import 'dart:async';
import 'package:flutter/material.dart';

class RewardCardWidget extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  final Duration initialDuration;
  final VoidCallback? onRewardButtonPressed;

  RewardCardWidget({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.initialDuration,
    this.onRewardButtonPressed,
  });

  @override
  _RewardCardWidgetState createState() => _RewardCardWidgetState();
}

class _RewardCardWidgetState extends State<RewardCardWidget> {
  late Timer _timer;
  Duration _remainingDuration = Duration.zero;
  bool isTimeOver = false;

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
          isTimeOver = true;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                  height: 150,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(widget.description),
                    SizedBox(height: 8),
                    if (isTimeOver)
                      ElevatedButton(
                        onPressed: widget.onRewardButtonPressed,
                        child: Text('Claim Reward'),
                      )
                    else
                      Text(
                        'Time Left: ${_remainingDuration.inMinutes}:${(_remainingDuration.inSeconds % 60).toString().padLeft(2, '0')}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (isTimeOver)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
