import 'package:flutter/material.dart';
import 'package:ceylinco_app/screens/promotions.dart';
import 'package:ceylinco_app/screens/news.dart';
import 'package:ceylinco_app/screens/products_services.dart';
import 'package:ceylinco_app/screens/buy_online.dart';
import 'package:ceylinco_app/screens/faq.dart';
import 'package:ceylinco_app/screens/contact_us.dart';
import 'package:ceylinco_app/screens/branch_locator.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black), // Back button color
      ),
      body: Container(
        color: Colors.white,
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16.0),
          children: [
            _buildMenuButton(
              context, 
              icon: Icons.campaign, 
              label: 'Promotions', 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PromotionsScreen()),
                );
              },
            ),
            _buildMenuButton(
              context, 
              icon: Icons.article, 
              label: 'News', 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewsScreen()),
                );
              },
            ),
            _buildMenuButton(
              context, 
              icon: Icons.medical_services, 
              label: 'Products & Services', 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductsServicesScreen()),
                );
              },
            ),
            _buildMenuButton(
              context, 
              icon: Icons.shopping_cart, 
              label: 'Buy Online', 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BuyOnlineScreen()),
                );
              },
            ),
            _buildMenuButton(
              context, 
              icon: Icons.help_outline, 
              label: 'FAQ', 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FAQScreen()),
                );
              },
            ),
            _buildMenuButton(
              context, 
              icon: Icons.contact_mail, 
              label: 'Contact Us', 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactUsScreen()),
                );
              },
            ),
            _buildMenuButton(
              context, 
              icon: Icons.location_pin, 
              label: 'Branch Locator', 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BranchLocatorScreen()),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: IconButton(
          icon: const Icon(Icons.close, color: Colors.red),
          onPressed: () {
            Navigator.pop(context); // Close the menu
          },
        ),
      ),
    );
  }

  // Helper function to build each menu button
  Widget _buildMenuButton(BuildContext context, {required IconData icon, required String label, required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.red),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
