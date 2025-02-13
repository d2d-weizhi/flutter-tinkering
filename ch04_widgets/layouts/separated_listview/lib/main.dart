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
                    child: ListView.separated(
                      padding: const EdgeInsets.all(8),
                      itemCount: 100,
                      itemBuilder: (BuildContext context, int index) {
                        // based on its index
                        // Return a widget for each item in the list
                        return Container(
                          height: 50,
                          color: Colors.teal[100],
                          child: Center(child: Text('Entry $index')),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                    )
                )
            )
        )
    );
  }
}

