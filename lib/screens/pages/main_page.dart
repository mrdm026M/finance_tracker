import 'package:finance_tracker/components/pages_components/main_page/my_total_balance.dart';
import 'package:finance_tracker/components/pages_components/main_page/top_appbar.dart';
import 'package:finance_tracker/components/pages_components/main_page/type_balance.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.bankName}) : super(key: key);

  final String bankName;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            width: _width,
            height: _height,
            color: Colors.grey.shade900,
            child: SizedBox(
              width: _width,
              child: Column(
                children: [
                  topAppBar(widget.bankName),
                  const SizedBox(height: 34.0),
                  myTotalBalance(_width, "Rs. 20,000"),
                  const SizedBox(height: 34.0),
                  typeBalance(_width),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24.0),
            width: _width,
            height: _height / 1.85,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
