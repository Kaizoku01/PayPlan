import 'package:flutter/material.dart';
import '../../common/theme/app_color_scheme.dart';
import '../../common/theme/app_text_theme.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  static const String routeName = "about_us_screen";

  static const String content =
      ''' I'm the solo swashbuckler behind the scenes. Armed with a keyboard and a sprinkle of SASS, I'm on a quest to craft apps that'll make your devices dance the jig.

In the world of solo development, I navigate the coding seas with a hearty mix of creativity and caffeine. Every line of code is a treasure, and every bug I conquer is a victory song sung by the digital waves.

Why solo? Because who needs a crew when you've got sass and a compass pointing to innovation! But, me hearties, even a lone pirate can't conquer the tech seas without support. So, join the crew! Support Kaizoku Apps and let's sail together into the sunset of endless possibilities.

peace out ✌️
kaizoku01 ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 35,
        title: Text(
          "About Us",
          style: PayPlanTextTheme.appTextTheme(
                  PayPlanColorScheme.font1Theme(context), context)
              .headlineLarge,
        ),
        iconTheme: const IconThemeData(size: 30.0),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          children: [
            Flexible(
              child: Text(
                content,
                style: PayPlanTextTheme.appTextTheme(
                        PayPlanColorScheme.font1Theme(context), context)
                    .labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
