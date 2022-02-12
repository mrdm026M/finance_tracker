import 'package:finance_tracker/components/pages_components/main_page/heading_transactions.dart';
import 'package:finance_tracker/components/pages_components/main_page/my_total_balance.dart';
import 'package:finance_tracker/components/pages_components/main_page/top_appbar.dart';
import 'package:finance_tracker/components/pages_components/main_page/type_balance.dart';
import 'package:finance_tracker/components/pages_components/transaction_title.dart';
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
                  const SizedBox(height: 20.0),
                  topAppBar(widget.bankName),
                  const SizedBox(height: 30.0),
                  myTotalBalance(_width, "Rs. 20,000"),
                  const SizedBox(height: 30.0),
                  typeBalance(_width),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(18.0, 24.0, 18.0, 24.0),
            width: _width,
            height: _height / 1.85,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 6.0),
                recentTransaction(context),
                const SizedBox(height: 20.0),
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    // color: Colors.grey.shade500,
                    child: Column(
                      children: [
                        transactionTile("expense"),
                        transactionTile("income"),
                        transactionTile("income"),
                        transactionTile("expense"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
