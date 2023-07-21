import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorController;
  bool isSelected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    colorController =
        ColorTween(begin: Colors.blue, end: Colors.green).animate(controller);

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
      ),
      body: Column(
        children: [
          Center(
            child: AnimatedContainer(
              height: 200,
              width: 200,
              curve: Curves.linear,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: isSelected ? Colors.green : Colors.blue),
              duration: const Duration(seconds: 2),
              child: isSelected
                  ? const Center(
                      child: AnimatedDefaultTextStyle(
                      duration: Duration(seconds: 2),
                      style: TextStyle(fontSize: 20),
                      child: Text("data"),
                    ))
                  : const Center(
                      child: AnimatedDefaultTextStyle(
                        duration: Duration(seconds: 2),
                        style: TextStyle(fontSize: 20),
                        child: Text("nimadur"),
                      )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: IconButton(
                onPressed: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                icon: const Icon(
                  Icons.ads_click,
                  color: Colors.blue,
                )),
          )
        ],
      ),
    );
  }
}
