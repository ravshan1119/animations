import 'package:flutter/material.dart';

class Screen10 extends StatefulWidget {
  const Screen10({super.key});

  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> with TickerProviderStateMixin {
  late AnimationController controller;
  late AnimationController textController;
  late Animation colorAnimation;
  late Animation textAnimation;
  bool isChanged = false;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    textController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      });


    textAnimation = Tween(
      begin: 0.0,
      end: 100.0,
    ).animate(CurvedAnimation(parent: textController, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 10"),
      ),
      body: Column(
        children: [
          Center(
            child: AnimatedContainer(
              height: 200,
              width: 200,
              color: colorAnimation.value,
              duration: Duration(seconds: 2),
              curve: Curves.linear,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text("${textController.value.toString()} %",style: const TextStyle(
            fontSize: 16,
            color: Colors.black
          ),),
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  AnimatedContainer(
                    height: 50,
                    width: 300,
                    duration: const Duration(seconds: 3),
                    curve: Curves.linear,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  AnimatedContainer(
                    height: 50,
                    width: isChanged ? 300 : 10,
                    duration: const Duration(seconds: 3),
                    curve: Curves.linear,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                isChanged = !isChanged;
              },
              icon: const Icon(
                Icons.ads_click,
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}
