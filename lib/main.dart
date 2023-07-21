import 'package:animations/ui/screens/home_screen.dart';
import 'package:animations/ui/screens/screen_one.dart';
import 'package:animations/ui/screens/screen_three.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
