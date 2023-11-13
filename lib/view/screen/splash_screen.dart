import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/view/screen/register_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Buy Your choice",
              style: GoogleFonts.greatVibes(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            //Great Vibes, Dancing Script, Sofia, Pacifico, Meow Script,
          ],
        ),
      ),
      nextScreen: RegisterPage(),
      duration: 4000,
    );
  }
}
