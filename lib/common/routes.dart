import 'package:flutter/material.dart';
import 'package:pay_plan/screens/bottom_nav_bar_wrapper/bottom_nav_bar_wrapper.dart';
import 'package:pay_plan/screens/personalize_screen/personalize_screen.dart';

import '../screens/signup_screen/signup_screen.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (BuildContext context) {
          return const SignUpScreen();
        }
        );
      case BottomNavBarWrapper.routeName:
        return MaterialPageRoute(builder: (BuildContext context) {
          return const BottomNavBarWrapper();
        }
        );
      case PersonalizeScreen.routeName:
        return MaterialPageRoute(builder: (BuildContext context) {
          return const PersonalizeScreen();
        }
        );
      default:
        return null;
    }

  }
}