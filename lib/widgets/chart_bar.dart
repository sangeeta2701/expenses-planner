import 'package:expenses_planner/utils/constants.dart';
import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String lable;
  final double spendingAmount;
  final double spendingAmountofTotal;

  ChartBar(this.lable, this.spendingAmount, this.spendingAmountofTotal);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraint) {
      return Column(
        children: [
          SizedBox(
              height: constraint.maxHeight * 0.15,
              child: FittedBox(
                  child: Text('\$${spendingAmount.toStringAsFixed(0)}'))),
          SizedBox(
            height: constraint.maxHeight * 0.05,
          ),
          SizedBox(
            width: 10,
            height: constraint.maxHeight * 0.6,
            child: Stack(children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Container(
                  height: 60,
                  width: 10,
                  decoration: BoxDecoration(
                    border: Border.all(color: appUiBorderGreyColor, width: 1),
                    color: Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingAmountofTotal,
                child: Container(
                  width: 10,
                  decoration: BoxDecoration(
                    color: appUiThemeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SizedBox(
                height: constraint.maxHeight * 0.15,
                child: FittedBox(child: Text(lable))),
          )
        ],
      );
    });
  }
}
