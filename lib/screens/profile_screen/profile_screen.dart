import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay_plan/screens/profile_screen/widgets/profile_button.dart';
import 'package:pay_plan/screens/profile_screen/widgets/use_service_card_button.dart';

import '../../common/theme/app_color_scheme.dart';
import '../../common/theme/app_text_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(radius: 50),
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
              icon: const Icon(
                FontAwesomeIcons.penToSquare,
                color: Color(0xff505280),
                size: 20,
              ),
              buttonText: const Text(
                "Personalize",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff505280),
                ),
              ),
              onTap: () {
                //TODO: PERSONALIZE SCREEN ROUTE
              },
            ),
            ProfileButton(
              width: 80,
              icon: const Icon(
                FontAwesomeIcons.wallet,
                color: Color(0xff505280),
                size: 20,
              ),
              onTap: () {
                //TODO: WALLET SCREEN ROUTE
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
              icon: const Icon(
                FontAwesomeIcons.rightFromBracket,
                size: 20,
                color: Color(0xff505280),
              ),
              buttonText: const Text(
                'Sign Out',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff505280),
                ),
              ),
              onTap: () {
                //TODO: SIGN OUT ROUTE
              },
            ),
            ProfileButton(
              width: 140,
              icon: const Icon(
                FontAwesomeIcons.ghost,
                size: 20,
                color: Color(0xff505280),
              ),
              buttonText: const Text(
                'About Us',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff505280),
                ),
              ),
              onTap: () {
                //TODO: ABOUT US SCREEN ROUTE
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




