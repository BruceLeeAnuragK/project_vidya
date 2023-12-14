import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/view/screen/Intro/controller/intro_screen_controller.dart';
import 'package:provider/provider.dart';

import '../../../../utils/imgPath_utils.dart';

class Intro1Screen extends StatefulWidget {
  const Intro1Screen({super.key});

  @override
  State<Intro1Screen> createState() => _Intro1ScreenState();
}

class _Intro1ScreenState extends State<Intro1Screen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Consumer<IntroScreenProvider>(builder: (context, provider, child) {
      return Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff4471CE),
                Color(0xff5A44C3),
              ],
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.11,
                      right: size.width * 0.05,
                      left: size.width * 0.05,
                    ),
                    child: Container(
                      height: size.height * 0.3,
                      child: Image.asset(ImgPath.path + ImgPath.intro1gif),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.059),
                    child: Text(
                      "Numerous free\n\t\t\ttrial courses",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.011),
                    child: Text(
                      "Free courses for you to\nfind your way learning.",
                      style: GoogleFonts.poppins(
                        color: Color(0xffE3E3E3),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Gap(75),
                  DotsIndicator(
                    dotsCount: 3,
                    position: provider.currentPageIndex.toDouble(),
                    onTap: (index) {
                      provider.dotNavigationClicked(index);
                    },
                    decorator: DotsDecorator(
                      color: Color(0xffE3E3E3),
                      activeColor: Color(0xff4471CE),
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                    ),
                  ), // SmoothPageIndicator(
                  //   onDotClicked: (int index) {},
                  //   controller: PageController(),
                  //   count: 3,
                  //   effect: ExpandingDotsEffect(
                  //     dotHeight: 10,
                  //     dotWidth: 10,
                  //     activeDotColor: Color(0xff4471CE),
                  //     dotColor: Color(0xffE3E3E3),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
