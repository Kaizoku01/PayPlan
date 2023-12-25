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
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // const Text(
            //   'Lets Plan!',
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     fontSize: 28,
            //     color: Color(0xff505280),
            //   ),
            // ),
            GraphClass(),
            WealthInformationCard(),
          ],
        ),
      ),
    );
  }
}


