import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoanSelectionPage extends StatefulWidget {
  const LoanSelectionPage({super.key});

  @override
  State<LoanSelectionPage> createState() => _LoanSelectionPageState();
}

class _LoanSelectionPageState extends State<LoanSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ReusableCard(
              label: 'Home Loan',
              icon: FontAwesomeIcons.house,
              onPress: () {
                Navigator.pushNamed(context, '/input');
              }
          ),
          ReusableCard(
              label: 'Personal Loan',
              icon: FontAwesomeIcons.handHoldingDollar,
              onPress: () {
                Navigator.pushNamed(context, '/input');
              }
          ),
          ReusableCard(
              label: 'Car Loan',
              icon: FontAwesomeIcons.car,
              onPress: () {
                Navigator.pushNamed(context, '/input');
              }
          ),
        ],
      ),
    );
  }
}