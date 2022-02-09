import 'package:finance_tracker/components/homePage/bank_container.dart';
import 'package:finance_tracker/components/homePage/bottom_text.dart';
import 'package:finance_tracker/components/homePage/heading.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
        width: _width,
        height: _height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            topHeading(_width),
            bankContainer(_width, context),
            bottomText(_width),
          ],
        ),
      ),
    );
  }
}
