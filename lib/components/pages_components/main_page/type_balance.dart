import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Widget typeBalance(double _width) {
  return SizedBox(
    width: _width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        transactionBox("income", 21356, 12543),
        const SizedBox(width: 10.0),
        transactionBox("expense", 21356, 12543),
      ],
    ),
  );
}

Widget transactionBox(String type, double incomeAmount, double expenseAmount) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 14.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            type.toLowerCase() == "income"
                ? Iconsax.arrow_square_down4
                : Iconsax.arrow_square_up4,
            size: 30.0,
            color: Colors.white,
          ),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type.toLowerCase() == "income"
                    ? "Total Income"
                    : "Total Expense",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade400,
                ),
              ),
              Text(
                type.toLowerCase() == "income"
                    ? "Rs. " + incomeAmount.toString()
                    : "Rs. " + expenseAmount.toString(),
                style: const TextStyle(
                  fontFamily: "Dosis",
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
