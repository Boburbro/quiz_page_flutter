import 'package:flutter/material.dart';

class AnswerInputFormField extends StatelessWidget {
  const AnswerInputFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FD),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: TextFormField(
          maxLines: 8,
          decoration: const InputDecoration(
            hintText: 'Javobni yozing....',
            hintStyle: TextStyle(
              color: Color(0xFF8E97A6),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
