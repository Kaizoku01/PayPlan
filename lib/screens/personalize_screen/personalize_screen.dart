import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay_plan/common/theme/app_color_scheme.dart';
import 'package:pay_plan/common/theme/app_text_theme.dart';

class PersonalizeScreen extends StatelessWidget {
  const PersonalizeScreen({super.key});

  static const String routeName = "personalize_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personalize",
          style: PayPlanTextTheme.appTextTheme(
                  PayPlanColorScheme.font1Theme(context), context)
              .headlineLarge,
        ),
      ),
      body: Center(
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
                        color: PayPlanColorScheme.lightPrimaryColor1,
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
                              PayPlanColorScheme.font1Theme(context)
                                  .withOpacity(0.6),
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
    );
  }
}

class InputFormFields extends StatelessWidget {
  InputFormFields({
    super.key,
    this.labelText,
    this.readOnly = false,
  });

  final String? labelText;

  final bool readOnly;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        controller: _controller,
        readOnly: readOnly,
        style: PayPlanTextTheme.appTextTheme(
                PayPlanColorScheme.font1Theme(context), context)
            .labelLarge,
        cursorColor: Colors.black,
        cursorHeight: 20,
        decoration: InputDecoration(
          suffixIcon: readOnly
              ? Icon(
                  FontAwesomeIcons.lock,
                  color:
                      PayPlanColorScheme.font1Theme(context).withOpacity(0.35),
                )
              : null,
          label: labelText != null ? Text(labelText!) : null,
          hintText: labelText == null ? "saxenasarvagya@gmail" : null,
          labelStyle: PayPlanTextTheme.appTextTheme(
                  PayPlanColorScheme.font1Theme(context).withOpacity(0.6),
                  context)
              .labelLarge,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
                color: PayPlanColorScheme.font1Theme(context), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: PayPlanColorScheme.font1Theme(context),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
