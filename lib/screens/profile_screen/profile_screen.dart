import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay_plan/screens/about_us_screen/about_us_screen.dart';
import 'package:pay_plan/screens/personalize_screen/personalize_screen.dart';
import 'package:pay_plan/screens/profile_screen/widgets/profile_button.dart';
import 'package:pay_plan/screens/profile_screen/widgets/use_service_card_button.dart';

import '../../common/theme/app_color_scheme.dart';
import '../../common/theme/app_text_theme.dart';
import '../wallet_screen/wallet_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(radius: 55),
        const SizedBox(height: 10),
        Text('Sarvagya',
            style: PayPlanTextTheme.appTextTheme(
                    PayPlanColorScheme.font1Theme(context), context)
                .displayMedium),
        const SizedBox(height: 10),
        Text('saxenasarvagya@gmail',
            style: PayPlanTextTheme.appTextTheme(
                    PayPlanColorScheme.font1Theme(context), context)
                .displaySmall),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProfileButton(
              icon: Icon(
                FontAwesomeIcons.penToSquare,
                color: PayPlanColorScheme.icon1Theme(context),
                size: 20,
              ),
              buttonText: Text(
                "Personalize",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: PayPlanColorScheme.icon1Theme(context),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, PersonalizeScreen.routeName);
              },
            ),
            ProfileButton(
              width: 80,
              icon: Icon(
                FontAwesomeIcons.wallet,
                color: PayPlanColorScheme.icon1Theme(context),
                size: 20,
              ),
              onTap: () {
                Navigator.pushNamed(context, WalletScreen.routeName);
              },
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProfileButton(
              width: 140,
              icon: Icon(
                FontAwesomeIcons.rightFromBracket,
                size: 20,
                color: PayPlanColorScheme.icon1Theme(context),
              ),
              buttonText: Text(
                'Sign Out',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: PayPlanColorScheme.icon1Theme(context),
                ),
              ),
              onTap: () {
                //TODO: SIGN OUT ROUTE
              },
            ),
            ProfileButton(
              width: 140,
              icon: Icon(
                FontAwesomeIcons.ghost,
                size: 20,
                color: PayPlanColorScheme.icon1Theme(context),
              ),
              buttonText: Text(
                'About Us',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: PayPlanColorScheme.icon1Theme(context),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, AboutUsScreen.routeName);
              },
            ),
          ],
        ),
        const SizedBox(height: 60),
        const UseServiceCardButton(),
      ],
    );
  }
}
