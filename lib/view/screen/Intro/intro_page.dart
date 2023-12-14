import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../utils/imgPath_utils.dart';
import '../../../utils/route_utils.dart';
import 'controller/intro_screen_controller.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Consumer<IntroScreenProvider>(
        builder: (context, provider, child) {
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
                  PageView(
                    controller: provider.pageController,
                    onPageChanged: provider.updatePageIndicator,
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
                              child:
                                  Image.asset(ImgPath.path + ImgPath.intro1gif),
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
                              spacing:
                                  const EdgeInsets.symmetric(horizontal: 3.0),
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
                              child: Image.asset(
                                ImgPath.path + ImgPath.intro2gif,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height * 0.059),
                            child: Text(
                              "Quick and easy\n\t\t\t\t\t\t\tlearning",
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
                              "Easy and fast learning at\n\t\t\t\t\ttime to help you\n\t\t\timprove various skills.",
                              style: GoogleFonts.poppins(
                                color: Color(0xffE3E3E3),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Gap(50),
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
                              spacing:
                                  const EdgeInsets.symmetric(horizontal: 3.0),
                            ),
                          ),
                        ],
                      ),
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
                              child:
                                  Image.asset(ImgPath.path + ImgPath.intro3gif),
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
                                color: Color(0xffE3E3E3),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Gap(50),
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
                              spacing:
                                  const EdgeInsets.symmetric(horizontal: 3.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(MyRoutes.registerPage);
                              },
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.15,
                                decoration: BoxDecoration(
                                  color: Color(0xff4471CE),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
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
                    ],
                  ),
                  Image.asset(ImgPath.path + ImgPath.sparklegif),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
