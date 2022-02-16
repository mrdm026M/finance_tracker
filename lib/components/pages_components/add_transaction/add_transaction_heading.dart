import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Widget addTransactionHeading(BuildContext context, double _width) {
  return SizedBox(
    width: _width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(
              Iconsax.arrow_left4,
              color: Colors.grey.shade900,
              size: 30.0,
            ),
          ),
        ),
        const SizedBox(height: 18.0),
        Text(
          "Add \nTransaction",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade900,
          ),
        )
      ],
    ),
  );
}
