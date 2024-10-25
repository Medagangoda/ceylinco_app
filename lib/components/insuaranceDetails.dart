import 'package:ceylinco_app/screens/paymentPopup.dart';
import 'package:flutter/material.dart';

class InsuranceDetails extends StatelessWidget {
  final double amountDue;
  final String paidUpDate;

  const InsuranceDetails({
    Key? key,
    required this.amountDue,
    required this.paidUpDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Amount Due',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'LKR ${amountDue.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Paid-up Date: $paidUpDate',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () { // Pay Now button
             showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PaymentPopup(amountDue: amountDue); 
                },
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Pay Now',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 128, 25, 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
