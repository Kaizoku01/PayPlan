import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay_plan/common/theme/app_color_scheme.dart';
import 'package:pay_plan/screens/logs_screen/logs_screen.dart';
import 'package:pay_plan/screens/profile_screen/profile_screen.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import '../../common/theme/app_text_theme.dart';
import '../home_screen/home_screen.dart';

class BottomNavBarWrapper extends StatefulWidget {
  const BottomNavBarWrapper({super.key});
  @override
  State<BottomNavBarWrapper> createState() => _BottomNavBarWrapperState();
}

class _BottomNavBarWrapperState extends State<BottomNavBarWrapper> {
  ///[_pageController] controller for bottomNavBar
  late PageController _pageController;

  ///[selectedIndex] bottomNavBar index
  int selectedIndex = 0;

  ///[_screenOptions] Contains all screens callouts for bottomNavBar
  final List<Widget> _screenOptions = const [
     HomeScreen(),
     LogScreen(),
     ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  ///[_onButtonPressed] This method is used for changing screen through bottom nav bar
  void _onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue),
            ),
            const SizedBox(width: 10),
            Text(
              "Pay-Plan",
              style: PayPlanTextTheme.appTextTheme(
                      PayPlanColorScheme.font1Theme(context), context)
                  .headlineLarge,
            ),
          ],
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _screenOptions,
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: SlidingClippedNavBar(
          backgroundColor: PayPlanColorScheme.bg1Theme(context),
          onButtonPressed: _onButtonPressed,
          iconSize: 30,
          activeColor: PayPlanColorScheme.font1Theme(context),
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              icon: FontAwesomeIcons.chartSimple,
              title: 'Home',
            ),
            BarItem(
              icon: FontAwesomeIcons.sackDollar,
              title: 'Logs',
            ),
            BarItem(
              icon: FontAwesomeIcons.user,
              title: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
