import 'package:flutter/material.dart';
import '../../../common/theme/app_color_scheme.dart';
import '../../../common/theme/app_text_theme.dart';

class AmountWidget extends StatelessWidget {
  ///[isIncome] is the widget representing Income or Expense checking bool
  final bool isIncome;

  ///[amount] amount represented by the widget is the collective income / expense so far
  final double amount;

  const AmountWidget({
    super.key,
    required this.amount,
    required this.isIncome,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 22,
          width: 22,
          decoration: BoxDecoration(
            color: isIncome
                ? PayPlanColorScheme.chartBarsTheme1(context).withOpacity(0.5)
                : PayPlanColorScheme.chartBarsTheme2(context).withOpacity(0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: isIncome
              ? Icon(
                  Icons.arrow_upward_rounded,
                  color: PayPlanColorScheme.icon3Theme(
                      context: context, isIncome: isIncome),
                  size: 18,
                )
              : RotationTransition(
                  turns: const AlwaysStoppedAnimation(30 / 360),
                  child: Icon(
                    Icons.arrow_upward_rounded,
                    color: PayPlanColorScheme.icon3Theme(
                        context: context, isIncome: isIncome),
                    size: 19,
                  ),
                ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            '\u{20B9}',
            style: PayPlanTextTheme.appTextTheme(
                    PayPlanColorScheme.font2Theme(context), context)
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          amount.toString(),
          style: PayPlanTextTheme.appTextTheme(
                  PayPlanColorScheme.font2Theme(context), context)
              .labelLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
