import 'package:flutter/material.dart';
import 'package:projeto_perguntas/answer.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() refreshQuiz;

  String get phraseResult {
    if (score <= 8) {
      return 'Parabéns!';
    } else if (score <= 12) {
      return 'Você é bom!';
    } else if (score <= 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  Result(this.score, this.refreshQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(phraseResult, style: TextStyle(fontSize: 28)),
        ),
        Answer('Reiniciar Quiz', refreshQuiz)
      ],
    );
  }
}
