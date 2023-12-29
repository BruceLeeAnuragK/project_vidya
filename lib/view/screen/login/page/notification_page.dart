import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/imgPath_utils.dart';
import '../../../../utils/route_utils.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff5B93E6),
              Color(0xff3C2DE1),
              Color(0xff3C2DE1),
            ],
          ),
        ),
        child: Column(
          children: [
            const Gap(100),
            SizedBox(
              height: size.height * 0.3,
              child: Image.asset(ImgPath.path + ImgPath.notificationgif),
            ),
            const Gap(46),
            Text(
              "Notifications",
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Text(
              "Stay Notified about new course\nupdates, scoreboard stats and\n        new friend follows",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xffE3E3E3),
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(35),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.studHome);
              },
              child: Container(
                height: 50,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: const Color(0xff3C2DE1),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "ALLOW",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Gap(30),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoutes.studHome);
              },
              child: Text(
                "Skip",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffE3E3E3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
