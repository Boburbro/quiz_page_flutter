import 'package:flutter/material.dart';
import '../../models/quiz_model.dart';
import 'widgets/answer_input_form_field.dart';
import 'widgets/option_tile.dart';
import 'widgets/quiz_index_item.dart';
import 'widgets/quiz_tile.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Text("Test timer"),
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                clipBehavior: Clip.none,
                itemCount: quizItems.length,
                itemBuilder: (context, index) {
                  return QuizIndexItem(
                    index: index,
                    isActive: _currentPage == index,
                    isCompleted: index == 1,
                    onTap: () {
                      _pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: quizItems.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                  if ((quizItems.length - 5) < index) return;

                  _scrollController.animateTo(
                    index * 70.0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                itemBuilder: (context, index) {
                  var quiz = quizItems[index];
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    clipBehavior: Clip.none,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          QuizTile(quiz: quiz),
                          const SizedBox(height: 20),
                          if (quiz.options == null)
                            const AnswerInputFormField(),
                          for (var option
                              in quiz.options?.indexed.toList() ?? [])
                            OptionTile(
                              option: option.$2,
                              index: option.$1,
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
