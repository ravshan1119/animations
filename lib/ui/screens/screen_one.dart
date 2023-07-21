import 'dart:math';

import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = Tween<double>(begin: 0, end: 2 * pi).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 100,),
          Transform.rotate(
            angle: animation.value,
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
