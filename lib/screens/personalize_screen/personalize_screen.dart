import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay_plan/common/theme/app_color_scheme.dart';
import 'package:pay_plan/common/theme/app_text_theme.dart';
import 'package:pay_plan/screens/personalize_screen/widgets/input_form_field.dart';

class PersonalizeScreen extends StatelessWidget {
  const PersonalizeScreen({super.key});

  static const String routeName = "personalize_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 35,
        title: Text(
          "Personalize",
          style: PayPlanTextTheme.appTextTheme(
                  PayPlanColorScheme.font1Theme(context), context)
              .headlineLarge,
        ),
        iconTheme: const IconThemeData(size: 30.0),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(radius: 60),
                      Positioned(
                        bottom: 8,
                        right: 10,
                        child: Icon(
                          FontAwesomeIcons.squarePen,
                          color: PayPlanColorScheme.wealthCardTheme(context),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: InputFormFields(
                    labelText: 'Full Name',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: InputFormFields(
                    // labelText: 'Email',
                    readOnly: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Text(
                        "Dark Mode",
                        style: PayPlanTextTheme.appTextTheme(
                                PayPlanColorScheme.font1Theme(context),
                                context)
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10),
                      Transform.scale(
                        scale: 0.9,
                        child: Switch(
                          value: false,
                          onChanged: (val) {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          PayPlanColorScheme.wealthCardTheme(context),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    //todo: update personal details
                  },
                  child: Text(
                    "Submit",
                    style: PayPlanTextTheme.appTextTheme(
                            PayPlanColorScheme.font2Theme(context), context)
                        .bodyMedium,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


