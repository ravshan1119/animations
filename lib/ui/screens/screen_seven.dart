import 'package:flutter/material.dart';

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({
    super.key,
  });

  @override
  State<ScreenSeven> createState() => _ScreenSevenState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _ScreenSevenState extends State<ScreenSeven> {
  // Whether the green box should be visible
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen seven'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}