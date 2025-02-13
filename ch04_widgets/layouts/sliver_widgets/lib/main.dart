import 'package:flutter/material.dart';

void main() {
  runApp(const SliversDemoApp());
}

class SliversDemoApp extends StatelessWidget {
  const SliversDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: CustomScrollView(
              slivers: [
                const SliverAppBar(
                  title: Text('Sliver Example'),
                  expandedHeight: 200,
                  backgroundColor: Colors.teal,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                    return Container(
                      height: 50,
                      color: Colors.teal[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text('Entry $index'),
                      ),
                    );
                  },
                  childCount: 20),
                ),
              ],
            )
          ),
        ),
      )
    );
  }
}

