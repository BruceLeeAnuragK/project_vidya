import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../utils/imgPath_utils.dart';
import '../../../utils/route_utils.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          dotsDecorator: DotsDecorator(
            color: Colors.grey,
            activeColor: Color(0xff3d5cff),
          ),
          pages: [
            PageViewModel(
              title: "Numerous free\ntrial courses",
              image: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(ImgPath.path + ImgPath.intro1),
              ),
              decoration: const PageDecoration(
                titleTextStyle: TextStyle(
                  color: Color(0xff1F1F39),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                bodyTextStyle: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 16,
                ),
              ),
              body: "Free courses for you to\nfind your way learning.",
            ),
            PageViewModel(
              title: "Quick and easy\nlearning",
              image: Image.asset(ImgPath.path + ImgPath.intro2),
              decoration: const PageDecoration(
                titleTextStyle: TextStyle(
                  color: Color(0xff1F1F39),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                bodyTextStyle: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 16,
                ),
              ),
              body:
                  "Easy and fast learning at\nant time to help you\nimprove various skills.",
            ),
            PageViewModel(
              title: "Ask any\nQuestion",
              image: Image.asset(ImgPath.path + ImgPath.intro3),
              decoration: const PageDecoration(
                titleTextStyle: TextStyle(
                  color: Color(0xff1F1F39),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                bodyTextStyle: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 16,
                ),
              ),
              body:
                  "Get answer to your very own\nquestions  with the help\nof your teachers.",
            ),
          ],
          next: const Text(
            "Next",
            style: TextStyle(
              color: Color(0xff3d5cff),
            ),
          ),
          done: TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(MyRoutes.registerPage);
            },
            child: const Text(
              "Done",
              style: TextStyle(
                color: Color(0xff3d5cff),
              ),
            ),
          ),
          curve: Curves.easeInOut,
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
          skip: const Text(
            "Skip",
            style: TextStyle(
              color: Color(0xff3d5cff),
            ),
          ),
          onDone: () {
            Navigator.of(context).pushReplacementNamed(MyRoutes.registerPage);
          },
        ),
      ),
    );
  }
}
