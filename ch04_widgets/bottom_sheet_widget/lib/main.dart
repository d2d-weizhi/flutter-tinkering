import 'package:flutter/material.dart';

void main() {
  runApp(const BottomSheetDemo());
}

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Sheet Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: BottomSheetPage(title: 'Flutter Bottom sheet', key: UniqueKey()),
    );
  }
}


class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key, required this.title});

  final String title;

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(context: context, builder: (BuildContext bc) {
      return Wrap(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.male),
            title: const Text('Male'),
            onTap: () {
              // Handle male tap here.
            }
          ),
          ListTile(
            leading: const Icon(Icons.female),
            title: const Text('Female'),
            onTap:() {
              // Handle female tile tap here.
            }
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _settingModalBottomSheet(context);
          },
          child: const Text('Open Bottom Sheet'),
        )
      ),
    );
  }
}

