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
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          indicatorColor: Colors.teal,
                          labelColor: Colors.blueGrey,
                          tabs: [
                            Tab(text: 'Tab 1'),
                            Tab(text: 'Tab 2'),
                            Tab(text: 'Tab 3'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              // Content for Tab 1
                              Center(
                                child: Text('Tab 1 Content'),
                              ),
                              // Content for Tab 2
                              Center(
                                child: Text('Tab 2 Content'),
                              ),
                              Center(
                                child: Text('Tab 3 Content'),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  )
              ),
            )
        )
    );
  }
}
