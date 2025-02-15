import 'package:flutter/material.dart';

void main() {
  runApp(const ListTileApp());
}

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListTile Demo',
      home: ListTileDemo(),
    );
  }
}


class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Demo'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('John Doe'),
            subtitle: const Text('johndoe@example.com'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Handle tile tap here.
            }
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Jane Smith'),
            subtitle: const Text('janesmith@example.com'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Handle tile tap here.
            }
          ),
        ],
      ),
    );
  }
}
