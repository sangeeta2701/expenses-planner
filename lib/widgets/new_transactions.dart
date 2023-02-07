import 'package:expenses_planner/utils/constants.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  NewTransaction({Key? key, required this.addTx}) : super(key: key);

  final Function addTx;

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.addTx(enteredTitle, enteredAmount);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Title",
              ),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              onSubmitted: (_) => submitData(),
            ),
            SizedBox(
              height: 70,
              child: Row(
                children: [
                  Text("No date chosen!"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Choose Date",
                      style: TextStyle(
                          color: appUiThemeColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: submitData,
                child: Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: appUiThemeColor,
                  ),
                  child: Center(
                    child: Text(
                      "Add Transaction",
                      style: TextStyle(color: appUiLightColor),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
