import 'package:ceylinco_app/components/insuaranceDetails.dart';
import 'package:flutter/material.dart';
import 'package:ceylinco_app/components/MainTitle.dart';
import 'package:ceylinco_app/components/MenuCard.dart';

import 'package:ceylinco_app/screens/notification.dart';
import 'package:ceylinco_app/screens/menu.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white), // menu icon
          onPressed: () {},
        ),
        title: const Text(
          'Home', // appbar Home name
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white), // notification icon
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NotificationScreen())
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 189, 4, 4),
                  Color.fromARGB(255, 78, 6, 1),
                ],
              ),
            ),
            child: ListView(
              children: [
                const Maintitle(), 

                const SizedBox(height: 20),

                SizedBox(
                  height: 280, 
                  child: PageView(
                    controller: PageController(viewportFraction: 0.8),
                    children: const [
                      MenuCard(
                        policyNumber: '00409712',
                        policyType: 'CEYLINCO ENDOWMWNT (WITH PROFITS)',
                        premiumAmount: 1088.00,
                        status: 'Active',
                      ),
                      MenuCard(
                        policyNumber: '00409713',
                        policyType: 'CEYLINCO PERSONAL PLAN',
                        premiumAmount: 2050.00,
                        status: 'Inactive',
                      ),
                      MenuCard(
                        policyNumber: '00409714',
                        policyType: 'CEYLINCO HEALTH PLAN',
                        premiumAmount: 1525.00,
                        status: 'Active',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10), 

                const InsuranceDetails(
                  amountDue: 220917.10,
                  paidUpDate: '2019-04-28',
                ),
              ],
            ),
          ),

          // Positioning the menu button at the bottom of the screen
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MenuScreen()),
                    );
                  },
                  child: Container(
                    width: 120,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.apps, color: Colors.red, size: 30),
                        Text(
                          'Menu',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
