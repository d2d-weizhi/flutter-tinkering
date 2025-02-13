import 'package:flutter/material.dart';

void main() {
  runApp(const CardDemoApp());
}

class CardDemoApp extends StatelessWidget {
  const CardDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Your Card'),
        ),
        body: SafeArea(
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
            clipBehavior: Clip.hardEdge,
            color: Colors.teal,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped.');
              },
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                              '\$3000',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                          ),
                          const Expanded(
                            child: SizedBox(height: 10),
                          ),
                          Image.asset('assets/images/visa-logo.png', width: 50, height: 30),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '0000 **** **** 0000',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(width: 10),
                      ),
                      const Row(
                        children: [
                          Text(
                            'John Smith',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(height: 10),
                          ),
                          Text(
                            '09/28',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            )
          ),
        ),
      ),
    );
  }
}

