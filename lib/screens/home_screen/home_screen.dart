import 'package:flutter/material.dart';
import 'package:pay_plan/screens/home_screen/widgets/graphClass.dart';
import 'package:pay_plan/screens/home_screen/widgets/wealth_information_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: <Widget>[
            const GraphClass(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 12,
            ),
            const WealthInformationCard(),
          ],
        ),
      ),
    );
  }
}
