import 'package:expenses_planner/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  TransactionList({Key? key, required this.transactions}) : super(key: key);

  final List<Transaction> transactions;
  // TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: transactions.isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "No transaction added yet!",
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Image(
                      height: 100,
                      width: 100,
                      image: AssetImage("assets/images/img1.png")),
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: appUiThemeColor,
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FittedBox(
                            child: Text("\$${transactions[index].amount}")),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: GoogleFonts.quicksand(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                    ),
                  ),
                );
                // return Card(
                //   child: Row(
                //     children: [
                //       Container(
                //         margin:
                //             EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                //         decoration: BoxDecoration(
                //             border: Border.all(
                //                 color: appUiThemeColor,
                //                 width: 2)),
                //         padding: EdgeInsets.all(8),
                //         child: Text(
                //           "\$ ${transactions[index].amount.toStringAsFixed(2)}",
                //           style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //             fontSize: 20,
                //             color: appUiThemeColor,
                //           ),
                //         ),
                //       ),
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             transactions[index].title,
                //             style: GoogleFonts.quicksand(
                //               fontSize: 18,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //           Text(
                //             DateFormat.yMMMd().format(transactions[index].date),
                //             style: TextStyle(
                //               color: appUiGreyColor,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
