import 'package:finance_tracker/components/pages_components/add_transaction/add_transaction_heading.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DateTime _dateTime = DateTime.now();
  final amountController = TextEditingController();
  String? _transactionType;
  final transactionController = TextEditingController();
  final categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          width: _width,
          height: _height,
          child: Column(
            children: [
              addTransactionHeading(context, _width),
              const SizedBox(height: 20.0),
              Expanded(
                child: KeyboardDismisser(
                  gestures: const [
                    GestureType.onVerticalDragDown,
                    GestureType.onTap,
                  ],
                  child: Container(
                    width: double.infinity,
                    color: Colors.amber,
                    child: Column(
                      children: [
                        buildDate(),
                        const SizedBox(height: 20.0),
                        buildAmount(),
                        const SizedBox(height: 20.0),
                        buildTransactionType(),
                        const SizedBox(height: 20.0),
                        buildTransaction(),
                        const SizedBox(height: 20.0),
                        buildCategory(),
                        const SizedBox(height: 20.0),
                        Center(
                          child: InkWell(
                            onTap: () {
                              print(_dateTime);
                              print(amountController.text);
                              print(transactionController.text);
                              print(_transactionType);
                              print(categoryController.text);
                            },
                            child: Container(
                              width: 100.0,
                              height: 50.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () async {
            DateTime? _newDate = await showDatePicker(
                context: context,
                initialDate: _dateTime,
                firstDate: DateTime(2021),
                lastDate: DateTime(2025));

            if (_newDate != null) {
              setState(() {
                _dateTime = _newDate;
              });
            }
          },
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade500,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Icon(
              Iconsax.calendar,
              size: 30.0,
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 48.0,
          width: 148.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade900,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '${_dateTime.day.toString().padLeft(2, '0')}-${_dateTime.month.toString().padLeft(2, '0')}-${_dateTime.year.toString()}',
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildAmount() {
    return TextField(
      controller: amountController,
      decoration: InputDecoration(
        labelText: "Enter Amount",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey.shade900,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey.shade900,
            width: 2.0,
          ),
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }

  Widget buildTransactionType() {
    return Row(
      children: [
        Row(
          children: [
            Radio(
                value: "income",
                groupValue: _transactionType,
                onChanged: (value) {
                  _transactionType = value.toString();
                  setState(() {});
                }),
            const Text("Income"),
          ],
        ),
        const SizedBox(width: 10.0),
        Row(
          children: [
            Radio(
                value: "expense",
                groupValue: _transactionType,
                onChanged: (value) {
                  _transactionType = value.toString();
                  setState(() {});
                }),
            const Text("Expense"),
          ],
        ),
      ],
    );
  }

  Widget buildTransaction() {
    return TextField(
      controller: transactionController,
      decoration: InputDecoration(
        labelText: "Enter Transaction",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey.shade900,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey.shade900,
            width: 2.0,
          ),
        ),
      ),
      keyboardType: TextInputType.text,
    );
  }

  Widget buildCategory() {
    return TextField(
      controller: categoryController,
      decoration: InputDecoration(
        labelText: "Enter Category",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey.shade900,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey.shade900,
            width: 2.0,
          ),
        ),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
