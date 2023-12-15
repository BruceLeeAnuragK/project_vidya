import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/imgPath_utils.dart';

class SuccessfullyRegistered extends StatefulWidget {
  const SuccessfullyRegistered({super.key});

  @override
  State<SuccessfullyRegistered> createState() => _SuccessfullyRegisteredState();
}

class _SuccessfullyRegisteredState extends State<SuccessfullyRegistered> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.3,
              child:
                  Image.asset(ImgPath.path + ImgPath.successfullyRegistergif),
            ),
            Text(
              "Your account has been\n\t\tsuccessfully created",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
