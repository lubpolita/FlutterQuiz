import 'package:flutter/material.dart';
import 'package:projeto_perguntas/quiz.dart';

import 'result.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'text': 'Qual é a sua cor favorita?',
      'answers': [
        {'text': 'Preto', 'score': 10},
        {'text': 'Vermelho', 'score': 5},
        {'text': 'Verde', 'score': 3},
        {'text': 'Branco', 'score': 1},
      ]
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answers': [
        {'text': 'Coelho', 'score': 10},
        {'text': 'Cobra', 'score': 5},
        {'text': 'Elefante', 'score': 3},
        {'text': 'Leão', 'score': 1},
      ]
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'answers': [
        {'text': 'Maria', 'score': 10},
        {'text': 'João', 'score': 5},
        {'text': 'Leo', 'score': 3},
        {'text': 'Pedro', 'score': 1},
      ]
    }
  ];

  bool get hasQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  void _answer(int score) {
    if (hasQuestionSelected) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
    }
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: hasQuestionSelected
          ? Quiz(_questions, _selectedQuestion, _answer)
          : Result(_totalScore),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
