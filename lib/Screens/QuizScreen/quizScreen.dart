import 'dart:async';

import 'package:development/CustomWidgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Utils/app_color.dart';
import '../CommonScreens/QuizScafold.dart';
import '../LoginScreen/resend.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  late bool _isAnswerCorrect;
  bool _isAnswered = false;
  int _secondsRemaining = 30;
  late Timer _timer;
  int? _selectedOptionIndex;

  // Define your quiz questions and answers here
  List<QuizQuestion> _quizQuestions = [
    QuizQuestion(
      question: "Which among the following is a literary work of Kalidasa?",
      options: ["Kathasaritasagara", "Svapnavasavadatta", "Chaurapanchasika", "Malavikagnimitra"],
      correctOptionIndex: 2,
    ),
    // Add more questions as needed
  ];

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel();
          _checkAnswer(-1); // Time's up, mark as incorrect
        }
      });
    });
  }

  void _checkAnswer(int selectedOptionIndex) {
    if (!_isAnswered) {
      setState(() {
        _isAnswered = true;
        _timer.cancel();

        if (selectedOptionIndex == _quizQuestions[_currentQuestionIndex].correctOptionIndex) {
          _isAnswerCorrect = true;
        } else {
          _isAnswerCorrect = false;
        }
      });
    }
  }

  void _nextQuestion() {
    setState(() {
      _currentQuestionIndex++;
      _isAnswered = false;
      _secondsRemaining = 30;
      _startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Container(
      color: appBgColor,

      child: Stack(
        children: [
          Positioned.fill(
              child:  _isAnswered?SvgPicture.asset('assets/Game/backgrouund.svg',fit: BoxFit.fill,)
                  :SvgPicture.asset('assets/Game/quizBg.svg',fit: BoxFit.fill,),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,

            appBar: AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back)),
                      Container(
                        child: Image.asset('assets/GameButton/fruit.png'),
                      ),
                      Container(),

                    ],
                  ),
                )
            ),

            body: _currentQuestionIndex < _quizQuestions.length
                ? Container(
              height: 600,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 125,
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    _isAnswered
                                        ?  Color(0xff240044).withOpacity(1)
                                    :Color(0xff820FC9).withOpacity(1),
                                    _isAnswered
                                        ?  Color(0xffffffff).withOpacity(1)
                                    :Color(0xff0F2388).withOpacity(1),

                                  ],
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: _isAnswered
                                        ?  Color(0xff311939)
                                        :Color(0xff12012D),
                                  ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/Quizz/score.png'),
                                    AppText(
                                      'Score',style:th.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w700,fontSize: 16
                                    ),textColor: appColorGreen,
                                    ),
                                    AppText(
                                      '0.00',style:th.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w700,fontSize: 16
                                    ),textColor: appColorGreen,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  AppText('Question ',style:th.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w500,fontSize: 16
                                  ),textColor: _isAnswered
                                      ? quizzrightnaswer
                                      : appColorWhite,
                                  ),
                                  AppText('3/10',style:th.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w500,fontSize: 16
                                  ),textColor:_isAnswered
                                      ? quizzrightnaswer
                                      : Color(0xFF6EC2FF),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 420,
                        margin: EdgeInsets.only(left: 18,right: 18,top: 40),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xff240044).withOpacity(1),
                              Color(0xffffffff).withOpacity(.1),

                            ],
                          ),
                        ),
                        child: Container(
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff311939),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 20,),
                              Center(
                                child: ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return const LinearGradient(
                                      colors: [Color(0xFF6EC2FF), Color(0xFF914EFF)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds);
                                  },
                                  child: AppText(
                                    _quizQuestions[_currentQuestionIndex].question,
                                    style: th.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w700,fontSize: 20
                                    ),textColor: appColorWhite,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Column(
                                children: _quizQuestions[_currentQuestionIndex].options.asMap().entries.map((entry) {
                                  int optionIndex = entry.key;
                                  String optionText = entry.value;
                                  bool isOptionSelected = _selectedOptionIndex == optionIndex;

                                  return Container(
                                    margin: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {
                                        _selectedOptionIndex = optionIndex;
                                        _checkAnswer(optionIndex);
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: _isAnswered
                                                  ? optionIndex == _quizQuestions[_currentQuestionIndex].correctOptionIndex
                                                  ? quizzrightnaswer
                                                  : optionIndex == _selectedOptionIndex
                                                  ? quizzwrongnaswer
                                                  : Colors.transparent
                                                  : Colors.transparent,
                                              borderRadius: BorderRadius.circular(12),
                                              border: Border.all(
                                                  color: Color(0xff58465E)
                                              )
                                          ),

                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 10),
                                                width: 23,
                                                height: 23,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: _isAnswered
                                                        ? optionIndex ==
                                                        _quizQuestions[_currentQuestionIndex].correctOptionIndex
                                                        ? Colors.transparent
                                                        : optionIndex == _selectedOptionIndex
                                                        ? Colors.transparent
                                                        : Color(0xffA395A0)
                                                        : Color(0xffA395A0), // Border color for unchecked
                                                    width: 2.0,
                                                  ),
                                                  color: Colors.transparent,
                                                ),
                                                child: _isAnswered
                                                    ? optionIndex == _quizQuestions[_currentQuestionIndex]
                                                    .correctOptionIndex
                                                    ? Icon(
                                                  Icons.check_circle,
                                                  color: Colors.black,
                                                  size: 23.0,
                                                )
                                                    : optionIndex == _selectedOptionIndex
                                                    ? Icon(
                                                  Icons.cancel,
                                                  color: Colors.white,
                                                  size: 23.0,
                                                )
                                                    : null
                                                    : null,
                                              ),
                                              AppText(
                                                "${String.fromCharCode(65 + optionIndex)}.",
                                                style: th.bodyMedium?.copyWith(
                                                    fontWeight: FontWeight.w500,fontSize: 14
                                                ),textColor:  _isAnswered
                                                  ? optionIndex ==
                                                  _quizQuestions[_currentQuestionIndex].correctOptionIndex
                                                  ? appColorBlack
                                                  : optionIndex == _selectedOptionIndex
                                                  ? appColorWhite
                                                  : appColorWhite
                                                  : appColorWhite,),
                                              SizedBox(width: 4,),
                                              Center(child: AppText(optionText,
                                                style: th.bodyMedium?.copyWith(
                                                    fontWeight: FontWeight.w700,fontSize: 18
                                                ),textColor: _isAnswered
                                                    ? optionIndex ==
                                                    _quizQuestions[_currentQuestionIndex].correctOptionIndex
                                                    ? appColorBlack
                                                    : optionIndex == _selectedOptionIndex
                                                    ? appColorWhite
                                                    : appColorWhite
                                                    : appColorWhite, )),
                                            ],
                                          )
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                              // SizedBox(height: 20),
                              // if (_isAnswered)
                              //   Text(
                              //     _isAnswerCorrect ? "Correct!" : "Wrong!",
                              //     style: TextStyle(
                              //       color: _isAnswerCorrect ? Colors.green : Colors.red,
                              //       fontSize: 20,
                              //     ),
                              //   ),
                              // SizedBox(height: 20),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     _nextQuestion();
                              //   },
                              //   child: Text("Next Question"),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: -1,
                    right: -1,
                    top: 40,
                    child: Container(
                      height: 72,
                      width: 72,
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color(0xff240044).withOpacity(1),
                            Color(0xffffffff).withOpacity(.1),

                          ],
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff18002E)
                        ),
                        child: Center(
                          child: CustomCircularProgressBar(duration: 30, bColor: Color(0xffFFB811),
                              onTimeout: (){
                                _checkAnswer(-1);
                              }),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
                : Center(
              child: Text("Quiz completed!"),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctOptionIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctOptionIndex,
  });
}