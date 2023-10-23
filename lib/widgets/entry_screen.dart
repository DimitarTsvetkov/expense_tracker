import 'package:expense_tracker/widgets/expenses.dart';
import 'package:expense_tracker/widgets/welcome_screen.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  var activeScreen = 'welcome-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'expenses-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = WelcomeScreen(
      switchScreen: switchScreen,
    );
    if (activeScreen == 'expenses-screen') {
      screenWidget = const Expenses();
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 64, 35, 143),
            Color.fromARGB(255, 94, 54, 202),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: screenWidget,
      ),
    );
  }
}
