import 'package:flutter/material.dart';

class BranchLocatorScreen extends StatelessWidget {
  const BranchLocatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Branch Locator'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Branch Locator Content Goes Here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
