import 'package:flutter/material.dart';

Future<int> fetchSomeData() {
  return Future.delayed(Duration(seconds: 2), () => 42);  // Simulating a delay
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("FutureBuilder Example")),
      body: FutureBuilder<int>(
        future: fetchSomeData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else {
            return Text("Received data: ${snapshot.data}");
          }
        }
      ),
    )
  ));

  fetchSomeData().then((value) {
    print("Received data: $value");
  }).catchError((error) {
    print("Error: $error");
  });
}
