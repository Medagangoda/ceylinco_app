import 'package:ceylinco_app/screens/viewMoreInsurance.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String policyNumber;
  final String policyType;
  final double premiumAmount;
  final String status;

  const MenuCard({
    Key? key,
    required this.policyNumber,
    required this.policyType,
    required this.premiumAmount,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      elevation: 8,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 245, 245, 245),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  status,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Ceylinco Life',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),

            Text(
              policyType,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 133, 12, 4),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 5),
            Text(
              'Policy No.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Text(
              policyNumber,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 133, 12, 4),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 5),

            Text(
              'Insurance Premium',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Text(
              'LKR: ${premiumAmount.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 133, 12, 4),
              ),
              textAlign: TextAlign.center,
            ),

            // Text(
            //   'Insurance Premium\nLKR ${premiumAmount.toStringAsFixed(2)}',
            //   style: const TextStyle(fontSize: 16, color: Colors.red),
            //   textAlign: TextAlign.center,
            // ),

            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                //  more details
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewMoreInsurance(
                      insuranceName: 'Life Insurance Plan',
                      insuranceNumber: policyNumber,
                      startDate: '01/01/2024',
                      endDate: '01/01/2034',
                      rulesAndRegulations:
                          'You must adhere to the terms and conditions outlined in the policy contract.',
                      beneficiaries: 'Nihal Pemasiri, Priyanthika , Dasun Sampath',
                      remainingAmount: 50000.00,
                    ),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'View More',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
