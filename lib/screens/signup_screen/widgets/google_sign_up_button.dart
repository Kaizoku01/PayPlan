import 'package:flutter/material.dart';
import 'package:pay_plan/screens/bottom_nav_bar_wrapper/bottom_nav_bar_wrapper.dart';

import '../../../common/theme/app_color_scheme.dart';
import '../../../common/theme/app_text_theme.dart';

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.black, width: 1.5),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        onPressed: () {
          //todo: signing up logic here
          Navigator.pushReplacementNamed(context, BottomNavBarWrapper.routeName);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/google_icon.png",
              height: 50,
            ),
            Text(
              "Sign Up",
              style: PayPlanTextTheme.appTextTheme(
                PayPlanColorScheme.font1Theme(context),
                context,
              ).displayMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}