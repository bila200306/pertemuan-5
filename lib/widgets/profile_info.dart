import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Nabila Innas',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Mahasiswi Software Engineering',
          style: TextStyle(
            fontSize: 16,
            color: const Color.fromARGB(255, 6, 6, 6),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}