import 'package:expenses_planner/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'new_transactions.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // NewTransaction(
        //   addTx: _addNewransaction,
        // ),
      ],
    );
  }
}
