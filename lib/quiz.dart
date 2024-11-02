import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final void Function(int) answer;
  final int selectedQuestion;
  final List<Map<String, Object>> _questions;

  Quiz(this._questions, this.selectedQuestion, this.answer);

  bool get hasQuestionSelected {
    return selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? answers = hasQuestionSelected
        ? _questions[selectedQuestion]['answers'] as List<Map<String, Object>>
        : null;

    List<Widget> widgets = [];

    if (answers != null) {
      widgets = answers
          .map((resp) => Answer(
              resp['text'].toString(), () => answer(resp['score'] as int)))
          .toList();
    }

    return Column(
      children: [
        Question(_questions[selectedQuestion]['text'].toString()),
        ...widgets
      ],
    );
  }
}
