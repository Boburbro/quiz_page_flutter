import 'package:flutter/material.dart';
import '../../../models/quiz_model.dart';

class QuizTile extends StatelessWidget {
  const QuizTile({
    super.key,
    required this.quiz,
  });

  final QuizModel quiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          quiz.question,
          style: TextStyle(fontSize: 20),
        ),
        if (quiz.questionImageUrl != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              quiz.questionImageUrl!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
      ],
    );
  }
}
