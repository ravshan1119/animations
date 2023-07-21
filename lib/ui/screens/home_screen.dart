import 'package:animations/ui/screens/screen_four.dart';
import 'package:animations/ui/screens/screen_one.dart';
import 'package:animations/ui/screens/screen_three.dart';
import 'package:animations/ui/screens/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homework animation"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenOne()));
                },
                child: const Text("Task 1")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenTwo()));
                },
                child: const Text("Task 2")),
          ),

          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenThree()));
                },
                child: const Text("Task 3")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenFour()));
                },
                child: const Text("Task 4")),
          ),
        ],
      ),
    );
  }
}
