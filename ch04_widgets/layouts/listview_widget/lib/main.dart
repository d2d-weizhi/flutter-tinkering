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
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 230,
                    color: Colors.teal[600],
                    child: const Center(child: Text('Item 1'))
                  ),
                  Container(
                    width: 230,
                    color: Colors.yellow[200],
                    child: const Center(child: Text('Item 2'))
                  ),
                  Container(
                    width: 230,
                    color: Colors.blue[400],
                    child: const Center(child: Text('Item 3'))
                  )
                ]
             )
            )
          )
        )
    );
  }
}

