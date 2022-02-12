import 'package:finance_tracker/screens/pages/all_transactions.dart';
import 'package:flutter/material.dart';

Widget recentTransaction(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Recent Transactions",
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
          color: Colors.grey.shade900,
        ),
      ),
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const AllTransactions(),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            "View More",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade900,
            ),
          ),
        ),
      ),
    ],
  );
}
