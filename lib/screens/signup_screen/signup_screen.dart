import 'package:flutter/material.dart';
import 'package:pay_plan/common/theme/app_color_scheme.dart';
import 'package:pay_plan/common/theme/app_text_theme.dart';
import 'package:pay_plan/screens/signup_screen/widgets/google_sign_up_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String routeName = "signup_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 50),
            child: Image.asset(
              "assets/images/signup_element.png",
              scale: 2.3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: PayPlanTextTheme.appTextTheme(
                        PayPlanColorScheme.font1Theme(context), context)
                    .headlineMedium!
                    .copyWith(fontStyle: FontStyle.italic),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Take control of your finances with\n',
                  ),
                  TextSpan(
                    text: 'Pay Plan',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 160),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0),
            child: GoogleSignUpButton(),
          )
        ],
      ),
    );
  }
}


