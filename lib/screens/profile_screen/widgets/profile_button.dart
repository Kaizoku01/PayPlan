import 'package:flutter/material.dart';

import '../../../common/theme/app_color_scheme.dart';

class ProfileButton extends StatelessWidget {
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final double borderRadiusValue;
  final Icon icon;
  final Text? buttonText;
  final VoidCallback onTap;
  const ProfileButton({
    super.key,
    this.width = 200,
    this.height = 60,
    this.borderWidth = 2,
    this.borderColor,
    this.borderRadiusValue = 16,
    required this.icon,
    required this.onTap,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? PayPlanColorScheme.font1Theme(context), width: borderWidth),
          borderRadius: BorderRadius.circular(borderRadiusValue),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon,
              if (buttonText != null) buttonText as Widget,
            ],
          ),
        ),
      ),
    );
  }
}
