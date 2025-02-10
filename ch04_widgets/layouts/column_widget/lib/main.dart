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
        body: SafeArea(
          child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
                color: Colors.orange,
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 20.0),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: Container(
                  color: Colors.pink,
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

