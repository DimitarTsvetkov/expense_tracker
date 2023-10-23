import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.switchScreen});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/expenses-logo.jpg',
            width: 300,
          ),
          const SizedBox(height: 80),
          Text('My personal expenses tracker',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
              )),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Open tracker'),
          )
        ],
      ),
    );
  }
}
