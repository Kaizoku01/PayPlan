import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(height: 60),
        // ClipRRect(
        //   borderRadius:
        //       BorderRadius.all(Radius.elliptical(55, 30)), // Image border
        //   child: SizedBox.fromSize(
        //     size: Size.fromRadius(60), // Image radius
        //     child: Image.network(FirebaseAuth.instance.currentUser!.photoURL!,
        //         fit: BoxFit.cover),
        //   ),
        // ),
        const CircleAvatar(radius: 50),
        const SizedBox(height: 10),
        const Text(
          'Sarvagya',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Color(0xff505280),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'saxenasarvagya@gmail',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: const Color(0xff505280).withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Container(
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.penToSquare,
                      color: Color(0xff505280),
                      size: 20,
                    ),
                    title: Text(
                      'Personalize',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff505280),
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const PersonalizeScreen()),
                // );
              },
            ),
            InkWell(
              child: Container(
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Icon(
                    FontAwesomeIcons.wallet,
                    color: Color(0xff505280),
                    size: 20,
                  ),
                ),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const WalletScreen()),
                // );
              },
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Container(
                height: 60,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.rightFromBracket,
                        size: 20,
                        color: Color(0xff505280),
                      ),
                      Text(
                        'Sign Out',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xff505280),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                // AuthenticationService().signOut();
              },
            ),
            InkWell(
              child: Container(
                height: 60,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.ghost,
                        size: 20,
                        color: Color(0xff505280),
                      ),
                      Text(
                        'About Us',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xff505280),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const AboutUsScreen()),
                // );
              },
            ),
          ],
        ),
        const SizedBox(height: 60),
        Container(
          height: 120,
          width: 320,
          decoration: BoxDecoration(
            //border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffCFF4B3),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 5,
                left: 35,
                child: SvgPicture.asset(
                  'assets/images/profile_screen_clip_art.svg',
                  height: 110,
                  width: 100,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "How to use \n the service ?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: const BorderRadius.all(
                            Radius.elliptical(45, 20),
                          ),
                        ),
                        child: const Icon(FontAwesomeIcons.arrowRight,
                            color: Color(0xff505280)),
                      ),
                      onTap: () {
                        //Todo : How to use button
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
