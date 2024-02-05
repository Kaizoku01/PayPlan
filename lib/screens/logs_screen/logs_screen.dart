import 'package:flutter/material.dart';
import 'package:pay_plan/screens/logs_screen/widgets/transaction_card.dart';

import '../../common/theme/app_color_scheme.dart';
import '../../common/theme/app_text_theme.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<bool> testStatusList = [false, true, true];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
            child: Text(
              "Transactions",
              style: PayPlanTextTheme.appTextTheme(
                      PayPlanColorScheme.font1Theme(context), context)
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 3,
              itemBuilder: (context, index) {
                return TransactionCard(
                  isIncome: testStatusList[index],
                  amount: 1200,
                  transactionSource: 'via fannyPay',
                  timeStamp: '2nd Feb 2023 1:36 AM',
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10);
              },
            ),
          ),
        ],
      ),
    );
  }
}
