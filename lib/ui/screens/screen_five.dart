import 'package:flutter/material.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  double _padding = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated Padding + Opacity"),
        ),
        body: Center(
          child: AnimatedPadding(
            duration: Duration(
                milliseconds: 500
            ),
            padding: EdgeInsets.all(_padding),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _padding = _padding == 8 ? 100 : 8;
                });
              },
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
          ),
        )
    );
  }
}
