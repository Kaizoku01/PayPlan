import 'package:flutter/material.dart';
import 'package:pay_plan/common/theme/app_color_scheme.dart';
import 'package:pay_plan/common/theme/app_text_theme.dart';
import 'amount_widget.dart';
import 'guageClass.dart';

class WealthInformationCard extends StatelessWidget {
  const WealthInformationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PayPlanColorScheme.wealthCardTheme(context),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 120,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(90 / 360),
              child: GuageClass(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Income',
                  style: PayPlanTextTheme.appTextTheme(
                          PayPlanColorScheme.font2Theme(context), context)
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const AmountWidget(
                  amount: 1000,
                  isIncome: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text('Expense',
                      style: PayPlanTextTheme.appTextTheme(
                              PayPlanColorScheme.font2Theme(context), context)
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.w600)),
                ),
                const AmountWidget(
                  amount: 1200,
                  isIncome: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


