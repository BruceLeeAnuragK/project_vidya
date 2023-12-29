import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/view/screen/Intro/controller/intro_screen_controller.dart';
import 'package:provider/provider.dart';

import '../../../../utils/imgPath_utils.dart';

class Intro3Screen extends StatefulWidget {
  const Intro3Screen({super.key});

  @override
  State<Intro3Screen> createState() => _Intro3ScreenState();
}

class _Intro3ScreenState extends State<Intro3Screen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<IntroScreenProvider>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.11,
                right: size.width * 0.05,
                left: size.width * 0.05,
              ),
              child: SizedBox(
                height: size.height * 0.3,
                child: Image.asset(ImgPath.path + ImgPath.intro3gif),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.059),
              child: Text(
                "Ask any\nQuestion",
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
                "Get answer to your very own\n\t\t\t\tquestions  with the help\n\t\t\t\t\t\t\t\t\tof your teachers.",
                style: GoogleFonts.poppins(
                  color: const Color(0xffE3E3E3),
                  fontSize: 16,
                ),
              ),
            ),
            const Gap(50),
            DotsIndicator(
              dotsCount: 3,
              position: provider.currentPageIndex.toDouble(),
              onTap: (index) {
                provider.dotNavigationClicked(index);
              },
              decorator: DotsDecorator(
                color: const Color(0xffE3E3E3),
                activeColor: const Color(0xff4471CE),
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              ),
            ),
            // SmoothPageIndicator(
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
      );
    });
  }
}
