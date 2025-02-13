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
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(8),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(
                10, // Total number of items in the grid
                (index) {
                  return Container(
                    color: Colors.blueGrey,
                    child: Center(child: Text('Item $index'))
                  );
                }
              ),
            )
          ),
        )
      )
    );
  }
}

