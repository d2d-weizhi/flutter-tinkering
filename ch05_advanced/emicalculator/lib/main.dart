import 'loan_selection_page.dart';
import 'input_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EMICalculator());
}

/*
theme: ThemeData(
  // We can also use the colorScheme property (not working)
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.blueGrey,
    secondary: Colors.teal,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Color(0XFFab3d00),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white
  ),
),
*/

class EMICalculator extends StatelessWidget {
  const EMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(color: Colors.teal),
        scaffoldBackgroundColor: Colors.blueGrey
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoanSelectionPage(),
        '/input': (context) => const InputScreen(),
      },
    );
  }
}
