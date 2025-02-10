import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutApp());
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(color: Colors.orange, height: 140, width: 140),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                Container(color: Colors.pink, height: 60, width: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

