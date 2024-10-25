import 'package:flutter/material.dart';

class BuyOnlineScreen extends StatelessWidget {
  const BuyOnlineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Online'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Buy Online Content Goes Here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
