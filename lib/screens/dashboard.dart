import 'package:finance_tracker/screens/pages/add_transaction.dart';
import 'package:finance_tracker/screens/pages/graph_page.dart';
import 'package:finance_tracker/screens/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.bankName}) : super(key: key);

  final String bankName;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Colors.grey.shade900,
      elevation: 0.0,
      child: const Icon(
        Iconsax.add,
        size: 30.0,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const AddTransaction(),
          ),
        );
      },
    );
  }

  Widget _buildBottomBar() {
    return BottomAppBar(
      color: Colors.grey.shade900,
      elevation: 0.0,
      shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: 74.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Icon(
                  _currentIndex == 0 ? Iconsax.home_15 : Iconsax.home4,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20.0,
                width: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: Icon(
                  _currentIndex == 1 ? Iconsax.chart_215 : Iconsax.chart_25,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      MainPage(bankName: widget.bankName.toString()),
      const GraphPage(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
