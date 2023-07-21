import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree>
    with TickerProviderStateMixin {
  int selected = 0;

  late Animation colorAnimation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    colorAnimation = ColorTween(
      begin: Colors.green,
      end: Colors.blue,
    ).animate(controller);

    controller.addListener(() {
      setState(() {});
    });

    controller.repeat(reverse: true);
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
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
            width: 350,
            child: Center(
              child: Stack(
                children: [
                  AnimatedPositioned(
                    height: selected == 0
                        ? 100
                        : selected == 1
                            ? 300
                            : selected == 2
                                ? 200
                                : 350,
                    width: selected == 0
                        ? 100
                        : selected == 1
                            ? 50
                            : selected == 2
                                ? 250
                                : 150,
                    curve: Curves.linear,
                    duration: const Duration(seconds: 2),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorAnimation.value),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: IconButton(
                onPressed: () {
                  if (selected == 3) {
                    setState(() {
                      selected = 0;
                    });
                  } else {
                    setState(() {
                      selected++;
                    });
                  }
                },
                icon: const Icon(
                  Icons.change_circle,
                  color: Colors.blue,
                )),
          )
        ],
      ),
    );
  }
}

class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositioned"),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: selected ? 200.0 : 100.0,
                height: selected ? 50.0 : 200.0,
                top: selected ? 50.0 : 150.0,
                duration: const Duration(seconds: 2),
                curve: Curves.bounceIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.red,
                    ),
                    child: Center(
                        child: Text(
                      'Tap me, Tapped:$selected',
                      style: const TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
