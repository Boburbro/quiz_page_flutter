import 'quiz_option_model.dart';

class QuizModel {
  final int id;
  final String question;
  final String? questionImageUrl;
  final List<QuizOptionModel>? options;
  final int? correctAnswerId;

  QuizModel({
    required this.id,
    required this.question,
    this.questionImageUrl,
    this.options,
    this.correctAnswerId,
  });
}

final List<QuizModel> quizItems = [
  QuizModel(
    id: 0,
    question:
        "Lorem Ipsum is simply dummy text of the printing and typesetting",
    options: [
      QuizOptionModel(
        id: 0,
        option: "Pul to’lovlari",
        imageUrl:
            "https://cdn.pixabay.com/photo/2024/12/07/17/47/autumn-9251331_640.jpg",
      ),
      QuizOptionModel(
        id: 1,
        option: "Transport xizmatlari",
        imageUrl:
            "https://cdn.pixabay.com/photo/2024/06/15/20/24/groovebox-8832172_640.png",
      ),
      QuizOptionModel(
        id: 2,
        option: "Dori vositalari bilan ta’minlash",
      ),
      QuizOptionModel(
        id: 3,
        option: "Barcha javoblar to’g’ri",
      ),
    ],
    correctAnswerId: 2,
  ),
  QuizModel(
    id: 1,
    question: "What is the capital of France?",
    options: [
      QuizOptionModel(id: 0, option: "Berlin"),
      QuizOptionModel(id: 1, option: "Madrid"),
      QuizOptionModel(id: 2, option: "Paris"),
      QuizOptionModel(id: 3, option: "Rome"),
    ],
    correctAnswerId: 2,
  ),
  QuizModel(
    id: 2,
    question: "Which planet is known as the Red Planet?",
    options: [
      QuizOptionModel(id: 0, option: "Venus"),
      QuizOptionModel(id: 1, option: "Mars"),
      QuizOptionModel(id: 2, option: "Jupiter"),
      QuizOptionModel(id: 3, option: "Saturn"),
    ],
    correctAnswerId: 1,
  ),
  QuizModel(
    id: 3,
    question: "This is image",
    questionImageUrl:
        "https://cdn.pixabay.com/photo/2022/09/10/22/24/apples-7445797_640.jpg",
    options: [
      QuizOptionModel(id: 0, option: "Berlin"),
      QuizOptionModel(id: 1, option: "Madrid"),
      QuizOptionModel(id: 2, option: "Paris"),
      QuizOptionModel(id: 3, option: "Rome"),
    ],
    correctAnswerId: 2,
  ),
  QuizModel(id: 4, question: "enter"),
  QuizModel(
    id: 6,
    question: "Which of the following is a programming language?",
    options: [
      QuizOptionModel(id: 0, option: "Python"),
      QuizOptionModel(id: 1, option: "HTML"),
      QuizOptionModel(id: 2, option: "CSS"),
      QuizOptionModel(id: 3, option: "JavaScript"),
    ],
    correctAnswerId: 0,
  ),
  QuizModel(
    id: 7,
    question: "What is the largest planet in our solar system?",
    options: [
      QuizOptionModel(id: 0, option: "Earth"),
      QuizOptionModel(id: 1, option: "Jupiter"),
      QuizOptionModel(id: 2, option: "Saturn"),
      QuizOptionModel(id: 3, option: "Mars"),
    ],
    correctAnswerId: 1,
  ),
  QuizModel(
    id: 8,
    question: "In which year did World War II end?",
    options: [
      QuizOptionModel(id: 0, option: "1940"),
      QuizOptionModel(id: 1, option: "1945"),
      QuizOptionModel(id: 2, option: "1950"),
      QuizOptionModel(id: 3, option: "1960"),
    ],
    correctAnswerId: 1,
  ),
  QuizModel(
    id: 9,
    question: "What is the speed of light?",
    options: [
      QuizOptionModel(id: 0, option: "299,792 km/s"),
      QuizOptionModel(id: 1, option: "300,000 km/s"),
      QuizOptionModel(id: 2, option: "150,000 km/s"),
      QuizOptionModel(id: 3, option: "400,000 km/s"),
    ],
    correctAnswerId: 0,
  ),
  QuizModel(
    id: 10,
    question: "Who painted the Mona Lisa?",
    options: [
      QuizOptionModel(id: 0, option: "Vincent van Gogh"),
      QuizOptionModel(id: 1, option: "Pablo Picasso"),
      QuizOptionModel(id: 2, option: "Leonardo da Vinci"),
      QuizOptionModel(id: 3, option: "Claude Monet"),
    ],
    correctAnswerId: 2,
  ),
  QuizModel(
    id: 11,
    question: "Which of these is a renewable energy source?",
    options: [
      QuizOptionModel(id: 0, option: "Coal"),
      QuizOptionModel(id: 1, option: "Natural Gas"),
      QuizOptionModel(id: 2, option: "Solar"),
      QuizOptionModel(id: 3, option: "Oil"),
    ],
    correctAnswerId: 2,
  ),
  QuizModel(
    id: 12,
    question: "What is the tallest mountain in the world?",
    options: [
      QuizOptionModel(id: 0, option: "Mount Kilimanjaro"),
      QuizOptionModel(id: 1, option: "Mount Everest"),
      QuizOptionModel(id: 2, option: "K2"),
      QuizOptionModel(id: 3, option: "Mount Fuji"),
    ],
    correctAnswerId: 1,
  ),
  QuizModel(
    id: 13,
    question: "What is the currency of Japan?",
    options: [
      QuizOptionModel(id: 0, option: "Yuan"),
      QuizOptionModel(id: 1, option: "Won"),
      QuizOptionModel(id: 2, option: "Yen"),
      QuizOptionModel(id: 3, option: "Ringgit"),
    ],
    correctAnswerId: 2,
  ),
  QuizModel(
    id: 14,
    question: "What is the chemical symbol for gold?",
    options: [
      QuizOptionModel(id: 0, option: "Au"),
      QuizOptionModel(id: 1, option: "Ag"),
      QuizOptionModel(id: 2, option: "Fe"),
      QuizOptionModel(id: 3, option: "Cu"),
    ],
    correctAnswerId: 0,
  ),
  QuizModel(
    id: 15,
    question: "Which of these animals is a mammal?",
    options: [
      QuizOptionModel(id: 0, option: "Shark"),
      QuizOptionModel(id: 1, option: "Dolphin"),
      QuizOptionModel(id: 2, option: "Lizard"),
      QuizOptionModel(id: 3, option: "Penguin"),
    ],
    correctAnswerId: 1,
  ),
  QuizModel(
    id: 16,
    question: "Who developed the theory of relativity?",
    options: [
      QuizOptionModel(id: 0, option: "Isaac Newton"),
      QuizOptionModel(id: 1, option: "Albert Einstein"),
      QuizOptionModel(id: 2, option: "Nikola Tesla"),
      QuizOptionModel(id: 3, option: "Galileo Galilei"),
    ],
    correctAnswerId: 1,
  ),
  QuizModel(
    id: 17,
    question: "What is the smallest continent?",
    options: [
      QuizOptionModel(id: 0, option: "Asia"),
      QuizOptionModel(id: 1, option: "Australia"),
      QuizOptionModel(id: 2, option: "Europe"),
      QuizOptionModel(id: 3, option: "Antarctica"),
    ],
    correctAnswerId: 1,
  ),
  QuizModel(
    id: 18,
    question: "What is the longest river in the world?",
    options: [
      QuizOptionModel(id: 0, option: "Amazon River"),
      QuizOptionModel(id: 1, option: "Nile River"),
      QuizOptionModel(id: 2, option: "Yangtze River"),
      QuizOptionModel(id: 3, option: "Mississippi River"),
    ],
    correctAnswerId: 1,
  ),
  QuizModel(
    id: 19,
    question: "Which element is known as the building block of life?",
    options: [
      QuizOptionModel(id: 0, option: "Oxygen"),
      QuizOptionModel(id: 1, option: "Carbon"),
      QuizOptionModel(id: 2, option: "Hydrogen"),
      QuizOptionModel(id: 3, option: "Nitrogen"),
    ],
    correctAnswerId: 1,
  ),
];
