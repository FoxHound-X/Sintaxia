class Question {
  final String text;
  final List<String> answers; // answers[0] = jawaban benar (konvensi)

  Question({
    required this.text,
    required this.answers,
  });

  String get correctAnswer => answers[0];

  List<String> shuffledAnswers() {
    final list = List<String>.from(answers);
    list.shuffle();
    return list;
  }
}
