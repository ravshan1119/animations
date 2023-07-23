import 'package:flutter/material.dart';

class Screen11 extends StatefulWidget {
  const Screen11({super.key});

  @override
  State<Screen11> createState() => _Screen11State();
}

class _Screen11State extends State<Screen11> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorAnimation;
  bool isChanged = false;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      });

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 11"),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
              ),
              AnimatedContainer(
                height: isChanged? 300 : 100,
                width: isChanged ? 300 : 100,
                duration: const Duration(seconds: 3),
                curve: Curves.linear,
                color: Colors.blue,
                child: const Center(child: Text("nimadur va kimdur",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal
                ),)),
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
