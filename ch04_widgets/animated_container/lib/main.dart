import 'package:flutter/material.dart';

void main() {
  runApp(const AnimatedContainerApp());
}

class AnimatedContainerApp extends StatelessWidget {
  const AnimatedContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedContainer Demo',
      home: AnimatedContainerDemo()
    );
  }
}


class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool isToggled = false;

  void toggleContainer() {
    setState(() {
      isToggled = !isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: toggleContainer,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: isToggled? 200.00 : 100.0,
            height: isToggled ? 200 : 100.00,
            color: isToggled ? Colors.blue : Colors.red,
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }
}
