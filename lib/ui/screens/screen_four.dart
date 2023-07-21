import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  double top = 100;
  double button = 100;
  double lift = 100;
  double right = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Four"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: top,
                  bottom: button,
                  left: lift,
                  right: right,
                  duration: const Duration(seconds: 2),
                  curve: Curves.linear,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: IconButton(
                onPressed: () {
                  setState(() {
                    top=0;
                    button=200;
                    lift=100;
                    right=100;
                  });
                },
                icon: const Icon(
                  Icons.swipe_up_rounded,
                  color: Colors.blue,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      top=100;
                      button=100;
                      lift=0;
                      right=200;
                    });
                  },
                  icon: const Icon(
                    Icons.swipe_left,
                    color: Colors.blue,
                  )),
              SizedBox(width: 50,),
              IconButton(
                  onPressed: () {
                    setState(() {
                      top=100;
                      button=100;
                      lift=200;
                      right=0;
                    });
                  },
                  icon: const Icon(
                    Icons.swipe_right,
                    color: Colors.blue,
                  )),
            ],
          ),
          Center(
            child: IconButton(
                onPressed: () {
                  setState(() {
                    top=200;
                    button=0;
                    lift=100;
                    right=100;
                  });
                },
                icon: const Icon(
                  Icons.swipe_down,
                  color: Colors.blue,
                )),
          ),
        ],
      ),
    );
  }
}