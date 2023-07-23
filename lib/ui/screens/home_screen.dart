import 'package:animations/ui/screens/screen_10.dart';
import 'package:animations/ui/screens/screen_11.dart';
import 'package:animations/ui/screens/screen_12.dart';
import 'package:animations/ui/screens/screen_13.dart';
import 'package:animations/ui/screens/screen_9.dart';
import 'package:animations/ui/screens/screen_five.dart';
import 'package:animations/ui/screens/screen_four.dart';
import 'package:animations/ui/screens/screen_one.dart';
import 'package:animations/ui/screens/screen_seven.dart';
import 'package:animations/ui/screens/screen_six.dart';
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
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenFive()));
                },
                child: const Text("Task 5")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenSix()));
                },
                child: const Text("Task 6")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenSeven()));
                },
                child: const Text("Task ")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Screen9()));
                },
                child: const Text("Task 9")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Screen10()));
                },
                child: const Text("Task 10")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Screen11()));
                },
                child: const Text("Task 11")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Screen12()));
                },
                child: const Text("Task 12")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Screen13()));
                },
                child: const Text("Task 13")),
          ),
        ],
      ),
    );
  }
}
