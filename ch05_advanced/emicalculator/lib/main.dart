import 'package:emicalculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      home: UserInputPage(),
    );
  }
}

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  State<UserInputPage> createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ReusableCard(label: 'Home Loan', icon: FontAwesomeIcons.house),
          ReusableCard(label: 'Personal Loan', icon: FontAwesomeIcons.handHoldingDollar),
          ReusableCard(label: 'Car Loan', icon: FontAwesomeIcons.car),
        ],
      ),
    );
  }
}
