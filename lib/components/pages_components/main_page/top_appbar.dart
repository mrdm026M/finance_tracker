import 'package:flutter/material.dart';

Widget topAppBar(String bankName) {
  return Center(
    child: Text(
      bankName,
      style: const TextStyle(
        fontSize: 26.0,
        color: Colors.white,
      ),
    ),
  );
}
