import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_vidya/utils/route_utils.dart';

class LetsGetStartedPage extends StatefulWidget {
  const LetsGetStartedPage({super.key});

  @override
  State<LetsGetStartedPage> createState() => _LetsGetStartedPageState();
}

class _LetsGetStartedPageState extends State<LetsGetStartedPage> {
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Gap(69),
                const Text(
                  "Lets Get Started",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const Gap(18),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Enter Your Mobile Number for Two\n            Step Verification",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Gap(26),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: size.height * 0.0046,
                      ),
                      label: const Text(
                        "Email Address",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(100),
                Padding(
                  padding: const EdgeInsets.only(right: 17, left: 17),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context)
                            .pushNamed(MyRoutes.verificationPage);
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 327,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffFFFFFF),
                          width: 1,
                        ),
                        color: const Color(0xff3C2DE1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "CONTINUE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
