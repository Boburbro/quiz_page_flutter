import 'package:flutter/material.dart';

class QuizIndexItem extends StatelessWidget {
  const QuizIndexItem({
    super.key,
    required this.index,
    this.isCompleted = false,
    this.isActive = false,
    required this.onTap,
  });

  final int index;
  final bool isCompleted;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isCompleted
              ? Colors.white
              : isActive
                  ? const Color(0xFF4CAF50)
                  : Colors.white,
          shape: BoxShape.circle,
          border: isCompleted
              ? Border.all(
                  color: const Color(0xFF4CAF50),
                  width: 2,
                )
              : null,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFDEE9EF),
              offset: const Offset(0, 12),
              blurRadius: 24,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: isCompleted
              ? const Icon(
                  Icons.check,
                  color: Color(0xFF4CAF50),
                )
              : Text(
                  (index + 1).toString(),
                  style: TextStyle(
                    color: isActive ? Colors.white : Colors.black,
                  ),
                ),
        ),
      ),
    );
  }
}
