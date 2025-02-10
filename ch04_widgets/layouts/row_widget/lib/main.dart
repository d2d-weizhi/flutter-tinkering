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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                color: Colors.orange,
                height: double.infinity,
                width: 100,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.green,
                      height: 100,
                      width: 100
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.pink,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

