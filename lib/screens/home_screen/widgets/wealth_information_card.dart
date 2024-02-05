import 'package:flutter/material.dart';
import 'package:pay_plan/common/theme/app_color_scheme.dart';
import 'package:pay_plan/common/theme/app_text_theme.dart';

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
                  style: PayPlanTextTheme.appTextTheme(PayPlanColorScheme.font2Theme(context), context).labelLarge!.copyWith(fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: PayPlanColorScheme.chartBarsTheme1(context).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:  Icon(
                        Icons.arrow_downward_rounded,
                        color: PayPlanColorScheme.icon3Theme(context: context, isIncome: true),
                        size: 18,
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        '\u{20B9}',
                        style: PayPlanTextTheme.appTextTheme(PayPlanColorScheme.font2Theme(context), context).bodyMedium!.copyWith(fontWeight: FontWeight.w600)
                      ),
                    ),
                     Text(
                      '1000',
                      style: PayPlanTextTheme.appTextTheme(PayPlanColorScheme.font2Theme(context), context).labelLarge!.copyWith(fontWeight: FontWeight.w600)
                    ),
                  ],
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Expense',
                    style: PayPlanTextTheme.appTextTheme(PayPlanColorScheme.font2Theme(context), context).labelLarge!.copyWith(fontWeight: FontWeight.w600)
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: PayPlanColorScheme.chartBarsTheme2(context).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: RotationTransition(
                        turns: const AlwaysStoppedAnimation(30 / 360),
                        child: Icon(
                          Icons.arrow_upward_rounded,
                          color: PayPlanColorScheme.icon3Theme(context: context, isIncome: false),
                          size: 19,
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        '\u{20B9}',
                        style: PayPlanTextTheme.appTextTheme(PayPlanColorScheme.font2Theme(context), context).bodyMedium!.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                     Text(
                      '1200',
                      style: PayPlanTextTheme.appTextTheme(PayPlanColorScheme.font2Theme(context), context).labelLarge!.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}