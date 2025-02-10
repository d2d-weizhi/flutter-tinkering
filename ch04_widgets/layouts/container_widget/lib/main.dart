import 'package:flutter/material.dart';

void main() {
  runApp(const HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Scaffold(
          backgroundColor: Colors.green,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Hello User"),
            ),
          ),
        ),
      )
    );
  }
}
