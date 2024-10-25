import 'package:flutter/material.dart';

class ViewMoreInsurance extends StatelessWidget {
  final String insuranceName;
  final String insuranceNumber;
  final String startDate;
  final String endDate;
  final String rulesAndRegulations;
  final String beneficiaries;
  final double remainingAmount;

  const ViewMoreInsurance({
    Key? key,
    required this.insuranceName,
    required this.insuranceNumber,
    required this.startDate,
    required this.endDate,
    required this.rulesAndRegulations,
    required this.beneficiaries,
    required this.remainingAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'More Insuarance Details',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 87, 4, 4),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const Text(
                  'Insurance Name :',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  insuranceName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 133, 12, 4),
                  ),
                ),
                const SizedBox(height: 16),

                // Insurance Number
                const Text(
                  'Insurance Number',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  insuranceNumber,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 133, 12, 4),
                  ),
                ),
                const SizedBox(height: 16),

                // Start and End Date
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Start Date',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text(
                          startDate,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 133, 12, 4),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'End Date',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text(
                          endDate,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 133, 12, 4),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Rules and Regulations
                const Text(
                  'Rules and Regulations',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  rulesAndRegulations,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),

                // Beneficiaries
                const Text(
                  'Beneficiaries',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  beneficiaries,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),

                // Remaining Amount
                const Text(
                  'Remaining Amount to be Paid',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  'LKR ${remainingAmount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 189, 4, 4),
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
