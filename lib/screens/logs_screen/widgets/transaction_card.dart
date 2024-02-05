import 'package:flutter/material.dart';

import '../../../common/theme/app_color_scheme.dart';
import '../../../common/theme/app_text_theme.dart';
class TransactionCard extends StatelessWidget {
  ///[isIncome] is the card representing income or expense checking flag variable
  final bool isIncome;

  ///[amount] is the amount of the particular transaction the card represents
  final double amount;

  ///[transactionSource] is the source of the particular transaction the card represents
  final String transactionSource;

  ///[timeStamp] is the formatted timeStamp of the particular transaction the card represents
  final String timeStamp;

  const TransactionCard({
    super.key, required this.isIncome, required this.amount, required this.transactionSource, required this.timeStamp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isIncome ? PayPlanColorScheme.chartBarsTheme1(context) : PayPlanColorScheme.chartBarsTheme2(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "\u{20B9} $amount",
                  style: PayPlanTextTheme.appTextTheme(
                      PayPlanColorScheme.lightFont1, context)
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  transactionSource,
                  style: PayPlanTextTheme.appTextTheme(
                      PayPlanColorScheme.lightFont1, context)
                      .labelSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5, right: 10),
            child: Column(
              children: [
                Icon(
                  isIncome ? Icons.add_rounded : Icons.remove_rounded,
                  size: 38,
                  color: PayPlanColorScheme.darkBackground1,
                ),
                const Spacer(),
                Text(
                  timeStamp,
                  style: PayPlanTextTheme.appTextTheme(
                      PayPlanColorScheme.lightFont1, context)
                      .labelSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
