import 'package:flutter/material.dart';

void main() {
  runApp(
    const HelloApp()
  );
}

class HelloApp extends StatelessWidget {
  const HelloApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        appBar: AppBar(
          title: const Text('Hello User'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text('Welcome User', style: TextStyle(fontSize: 24)),
              SizedBox(height: 16),
              TextField(decoration: InputDecoration(labelText: 'Enter your name')),
              SizedBox(height: 16),
              ElevatedButton(onPressed: submitButtonPressed, child: Text('Submit')),
            ],
          ),
        ),
        backgroundColor: Colors.green,
      )
    );
  }
}

void submitButtonPressed() {
  print('Submit button pressed');
}