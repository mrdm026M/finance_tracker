import 'package:flutter/material.dart';

Widget myTotalBalance(double _width, String totalBalance) {
  return Column(
    children: [
      Text(
        "Total Balance",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade400,
        ),
      ),
      Text(
        totalBalance.toString(),
        style: const TextStyle(
          fontFamily: "Dosis",
          fontSize: 36.0,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    ],
  );
}
