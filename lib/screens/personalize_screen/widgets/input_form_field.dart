import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common/theme/app_color_scheme.dart';
import '../../../common/theme/app_text_theme.dart';

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