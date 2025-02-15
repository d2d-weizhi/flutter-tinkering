import 'package:flutter/material.dart';

void main() {
  runApp(const TweenAnimationDemo());
}

class TweenAnimationDemo extends StatelessWidget {
  const TweenAnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tween Animation Demo',
      home: TweenAnimationEx(),
    );
  }
}

class TweenAnimationEx extends StatefulWidget {
  const TweenAnimationEx({super.key});

  @override
  State<TweenAnimationEx> createState() => _TweenAnimationExState();
}

class _TweenAnimationExState extends State<TweenAnimationEx> with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2)
    );

    final tween = Tween<double>(begin: 0.0, end: 1.0);

    _animation = tween.animate(_animationController!);

    _animationController!.forward();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation Demo'),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation!,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

