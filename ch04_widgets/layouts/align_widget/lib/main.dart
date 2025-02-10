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
        backgroundColor: Colors.green,
        body: Center(
          child: Container(
            color: Colors.red,
            width: 120,
            height: 120,
            child: const Align(
              alignment: Alignment(1,1),
              child: Text("Hello User"),
            ),
          ),
        ),
      ),
    );
  }
}

