import 'package:flutter/material.dart';

import '../../../models/quiz_option_model.dart';

class OptionTile extends StatelessWidget {
  const OptionTile({
    super.key,
    required this.option,
    required this.index,
  });

  final QuizOptionModel option;
  final int index;

  String getOptionLetter(int index) {
    if (index == 0) {
      return "A";
    } else if (index == 1) {
      return "B";
    } else if (index == 2) {
      return "C";
    } else {
      return "D";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              if (option.imageUrl != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    option.imageUrl!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              Row(
                children: [
                  Text(
                    getOptionLetter(index),
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF92A5B4),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        option.option,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
