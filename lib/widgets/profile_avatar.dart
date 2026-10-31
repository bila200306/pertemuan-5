import 'package:flutter/material.dart';

class profile_avatar extends StatelessWidget {
  const profile_avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(255, 234, 197, 62),
                child: Icon(Icons.person, size: 50, color: Colors.white),
              );
  }
}