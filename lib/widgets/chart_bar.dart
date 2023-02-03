import 'package:expenses_planner/utils/constants.dart';
import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String lable;
  final double spendingAmount;
  final double spendingAmountofTotal;

  ChartBar(this.lable, this.spendingAmount, this.spendingAmountofTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('\$${spendingAmount.toStringAsFixed(0)}'),
        Padding(
          padding: const EdgeInsets.only(top:5.0),
          child: Stack(
            children:[
              Container(
              height: 60,
              width: 10,
              decoration: BoxDecoration(
                border: Border.all(color: appUiBorderGreyColor,width: 1),
                color: Color.fromRGBO(220, 220, 220, 1),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            FractionallySizedBox(heightFactor: spendingAmountofTotal,child: Container(
              decoration: BoxDecoration(
                color: appUiThemeColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),),
            ] 
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:5.0),
          child: Text(lable),
        )
      ],
    );
  }
}
