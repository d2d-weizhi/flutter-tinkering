import 'package:flutter/material.dart';

void main() {
  runApp(const DropdownButtonDemo());
}

class DropdownButtonDemo extends StatefulWidget {
  const DropdownButtonDemo({super.key});

  @override
  State<DropdownButtonDemo> createState() => _DropdownButtonDemoState();
}

class _DropdownButtonDemoState extends State<DropdownButtonDemo> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dropdown Button Example'),
        ),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Center(
            child: DropdownButton<String>(
              value: selectedItem,
              onChanged: (String? newValue) {
                setState(() {
                  selectedItem = newValue;
                });
              },
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item)
                );
              }).toList(),
            )
          ),
        ),
      ),
    );
  }
}
