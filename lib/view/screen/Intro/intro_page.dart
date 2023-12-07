import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BottomAppBar(
          color: Colors.white,
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Color(0xff3d5cff),
                  ),
                ),
              ),
              DotsIndicator(
                dotsCount: 3,
                position: 0,
                decorator: DotsDecorator(
                  activeColor: Color(0xff3d5cff),
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Color(0xff3d5cff),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
