import 'package:flutter/material.dart';
import 'package:quiz_app_nurs/data/questions.dart';
import 'package:quiz_app_nurs/questions_screen.dart';
import 'package:quiz_app_nurs/results_screen.dart';
import 'package:quiz_app_nurs/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      _selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if(activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: _selectedAnswers, onRestart: restartQuiz);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade900,
        body: screenWidget,
      ),
    );
  }
}
