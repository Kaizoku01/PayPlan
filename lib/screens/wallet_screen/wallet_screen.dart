import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../common/theme/app_color_scheme.dart';
import '../../common/theme/app_text_theme.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});
  static const String routeName = "wallet_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 35,
        title: Text(
          "Turnaround Amount",
          style: PayPlanTextTheme.appTextTheme(
                  PayPlanColorScheme.font1Theme(context), context)
              .headlineLarge,
        ),
        iconTheme: const IconThemeData(size: 30.0),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Icon(
              FontAwesomeIcons.wallet,
              color: PayPlanColorScheme.wealthCardTheme(context),
              size: 60,
            ),
            const SizedBox(height: 10),
            Text(
              "\u{20B9} 2400",
              style: PayPlanTextTheme.appTextTheme(
                      PayPlanColorScheme.font1Theme(context), context)
                  .displayMedium,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 150.0,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: const EdgeInsets.only(top: 2.0,right: 5),
                    child: Icon(
                      Icons.info_rounded,
                      color: PayPlanColorScheme.font1Theme(context).withOpacity(0.7),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "This amount represents collective amount of income and expense.",
                      style: PayPlanTextTheme.appTextTheme(
                          PayPlanColorScheme.font1Theme(context), context)
                          .bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
