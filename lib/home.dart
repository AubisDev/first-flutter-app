import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [const HomeImage(), const HomeText(), StartButton(startQuiz)],
    ));
  }
}

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
        image: AssetImage('assets/images/quiz-logo.png'),
        width: 300,
        color: Color.fromARGB(151, 255, 255, 255));
  }
}

class HomeText extends StatelessWidget {
  const HomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 20),
      child: Text(
        'Learn Flutter the fun way!',
        style: GoogleFonts.lato(
          fontSize: 24,
          color: const Color.fromARGB(255, 224, 205, 205),
        ),
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(
        Icons.arrow_right_alt,
        color: Colors.white,
      ),
      onPressed: startQuiz,
      label: const Text(
        'Start Quiz',
        style: TextStyle(
          color: Color.fromARGB(255, 224, 205, 205),
        ),
      ),
    );
  }
}
