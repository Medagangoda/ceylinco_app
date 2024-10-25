import 'package:flutter/material.dart';

class Maintitle extends StatelessWidget {
  const Maintitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        const Text(
          'Life Insurance',
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
