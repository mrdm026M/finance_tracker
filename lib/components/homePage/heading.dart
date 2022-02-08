import 'package:flutter/material.dart';

Widget topHeading(double width) {
  return SizedBox(
    width: width,
    child: Text(
      "Finance \nTracker",
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.grey.shade900,
        fontSize: 60.0,
        fontWeight: FontWeight.w600,
        height: 1,
      ),
    ),
  );
}
