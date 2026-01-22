import 'package:flutter/material.dart';
import 'Data/question.dart';
import 'model/question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late final List<Question> _shuffledQuestions;

  int _index = 0;
  int _score = 0;
  String? _selected;

  @override
  void initState() {
    super.initState();
    _shuffledQuestions = List<Question>.from(questions)..shuffle(); // acak soal
  }

  void _pickAnswer(String answer) {
    if (_selected != null) return; // cegah klik dobel

    final q = _shuffledQuestions[_index];
    setState(() {
      _selected = answer;
      if (answer == q.correctAnswer) _score++;
    });

    Future.delayed(const Duration(milliseconds: 600), () {
      if (!mounted) return;
      setState(() {
        _index++;
        _selected = null;
      });
    });
  }

  void _restart() {
    setState(() {
      _shuffledQuestions.shuffle();
      _index = 0;
      _score = 0;
      _selected = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDone = _index >= _shuffledQuestions.length;

    return Scaffold(
      appBar: AppBar(title: const Text('Quiz Sederhana')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isDone ? _Result(score: _score, total: _shuffledQuestions.length, onRestart: _restart)
                      : _QuestionView(
                          question: _shuffledQuestions[_index],
                          number: _index + 1,
                          total: _shuffledQuestions.length,
                          selected: _selected,
                          onPick: _pickAnswer,
                        ),
      ),
    );
  }
}

class _QuestionView extends StatelessWidget {
  final Question question;
  final int number;
  final int total;
  final String? selected;
  final void Function(String) onPick;

  const _QuestionView({
    required this.question,
    required this.number,
    required this.total,
    required this.selected,
    required this.onPick,
  });

  @override
  Widget build(BuildContext context) {
    final answers = question.shuffledAnswers(); // acak opsi jawaban tiap render

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Soal $number/$total', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        Text(question.text, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 20),

        ...answers.map((a) {
          final locked = selected != null;
          final isSelected = selected == a;

          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: locked ? null : () => onPick(a),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(isSelected ? '✓ $a' : a),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}

class _Result extends StatelessWidget {
  final int score;
  final int total;
  final VoidCallback onRestart;

  const _Result({
    required this.score,
    required this.total,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Selesai!', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 10),
          Text('Skor kamu: $score / $total', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onRestart,
            child: const Text('Ulangi Quiz'),
          ),
        ],
      ),
    );
  }
}
