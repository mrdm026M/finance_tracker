import 'package:finance_tracker/screens/dashboard.dart';
import 'package:flutter/material.dart';

Widget bankContainer(double width, BuildContext context) {
  return SizedBox(
    width: width,
    child: Column(
      children: [
        // Kotak
        bank(
            width, 20.0, 30.0, 80.0, "Kotak Bank", "Rs.20,000", "50%", context),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: bank(0.0, 15.0, 25.0, 60.0, "State Bank", "Rs. 20,000",
                  "30%", context),
            ),
            const SizedBox(width: 16.0),
            bank((width / 3), 15.0, 25.0, 40.0, "PayTM Bank", "Rs. 20,000",
                "20%", context),
          ],
        )
      ],
    ),
  );
}

Widget bank(
    double width,
    double bankNameSize,
    double totalSavingsSize,
    double bankPercentageSize,
    String bankName,
    String totalSavings,
    String bankPercentage,
    context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) =>
                Dashboard(bankName: bankName.toString()),
          ));
    },
    child: Container(
      padding: const EdgeInsets.all(12.0),
      width: width,
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(14.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(2, 2), // Shadow position
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bankName.toString(),
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: bankNameSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                totalSavings.toString(),
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontFamily: "Dosis",
                  fontSize: totalSavingsSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Positioned(
            right: 0.0,
            top: -10.0,
            child: Text(
              bankPercentage.toString(),
              style: TextStyle(
                color: Colors.grey.shade900,
                fontFamily: "Dosis",
                fontSize: bankPercentageSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
