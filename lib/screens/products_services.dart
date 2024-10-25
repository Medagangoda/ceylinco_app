import 'package:flutter/material.dart';

class ProductsServicesScreen extends StatelessWidget {
  const ProductsServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products & Services'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Products & Services Content Goes Here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
