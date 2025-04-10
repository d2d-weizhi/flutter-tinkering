import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final void Function()? onPress;

  const ReusableCard({super.key, required this.label, required this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF00e7f8),
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 100,
      width: double.infinity,
      child: GestureDetector(
        onTap: onPress,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Falcon is a widget provided by the flutter_font_awesome package.
                // It allows us to display Font Awesome icons in our Flutter app.
                FaIcon(icon),
                const SizedBox(width: 16),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
