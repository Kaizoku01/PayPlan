import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UseServiceCardButton extends StatelessWidget {
  const UseServiceCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 320,
      decoration: BoxDecoration(
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
                    //Todo : HOW TO USE SERVICE SCREEN ROUTE
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}