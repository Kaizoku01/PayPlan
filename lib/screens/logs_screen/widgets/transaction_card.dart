import 'package:flutter/material.dart';

import '../../../common/theme/app_color_scheme.dart';
import '../../../common/theme/app_text_theme.dart';
class TransactionCard extends StatelessWidget {
  final bool isIncome;
  const TransactionCard({
    super.key, required this.isIncome,
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
                  "\u{20B9} 2400",
                  style: PayPlanTextTheme.appTextTheme(
                      PayPlanColorScheme.lightFont1, context)
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "via Google Pay",
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
                  "2nd Feb 2023 1:36 AM",
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
