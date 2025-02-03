class QuizOptionModel {
  final int id;
  final String option;
  final String? imageUrl;

  QuizOptionModel({
    required this.id,
    required this.option,
    this.imageUrl,
  });
}
