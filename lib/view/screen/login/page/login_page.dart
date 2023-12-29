import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_vidya/utils/imgPath_utils.dart';
import 'package:project_vidya/utils/route_utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool hide = true;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
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
                child: Center(
                  child: Column(
                    children: [
                      const Gap(80),
                      // Positioned(
                      //   top: 90,
                      //     child: Container(
                      //       height: s.height * 0.1,
                      //       width: s.width * 0.1,
                      //       child: Image.network(
                      //           "https://s3-alpha-sig.figma.com/img/6fa5/452d/3146f131b1b08ecfa37e68bee56428e4?Expires=1704067200&Signature=S3t5sm86JGjqREfZuhYq-foaMVhZ3uvDaI7suuGciePasU655Fc6xNL-RGPi6nhlfCaO-ayFvezPw~qzqarD21PD~Vm0N6YmHt7AOn3LVoW4yxa~AIWqlK1QgzPc-1ZQx0-Qy08VVIzKGMfRZZ8bn0xUw785oLNjlwHqjbcIgibl7RvoyXP2HKPLNa8SPaMvwWVVThxxjTwGFrdBAwIj9pEWvj7ISGYR0sFKpAyA0j-zijFraiY3fveI8IQPY0TInXFJDSXrr5jrCPmEFEbSduPRLx0VFflp4zhofC1k0KU0aKzScwHNE53CyMNox6kRLcu7n41F2mwScDE7eSFFdg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                      //     )),
                      Text(
                        "Log In",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Enter your details below & get better experience",
                        style: GoogleFonts.poppins(
                          color: Color(0xffE3E3E3),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(32),
                      TextFormField(
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: size.height * 0.0046,
                          ),
                          label: Text(
                            "Username",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Gap(32),
                      TextFormField(
                        obscureText: hide,
                        textInputAction: TextInputAction.done,
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: size.height * 0.0046,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hide = !hide;
                              });
                            },
                            icon: hide
                                ? Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.white,
                                  )
                                : Icon(
                                    Icons.visibility_off_outlined,
                                    color: Colors.white,
                                  ),
                          ),
                          label: Text(
                            "Password",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffE3E3E3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(32),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(MyRoutes.selectLanguage);
                        },
                        child: Container(
                          height: size.height * 0.07,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff3C2DE1),
                            border: Border.all(
                              color: Color(0xffE3E3E3),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "LOG IN",
                            style: GoogleFonts.poppins(
                              color: Color(0xffF3F5F9),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account ?",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(MyRoutes.registerPage);
                            },
                            child: Text(
                              " Sign Up",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          Gap(20),
                          Text(
                            "Or Login with",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            ),
                          ),
                          Gap(20),
                          Expanded(
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(MyRoutes.selectLanguage);
                            },
                            child: Container(
                              height: size.height * 0.12,
                              width: size.width * 0.12,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      ImgPath.path + ImgPath.google_logo),
                                ),
                              ),
                            ),
                          ),
                          Gap(20),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(MyRoutes.selectLanguage);
                            },
                            child: Container(
                              height: size.height * 0.15,
                              width: size.width * 0.15,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImgPath.path + ImgPath.facebook_logo,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: s.height * 0.45,
          //     child: Container(
          //       height: s.height * 0.1,
          //       width: s.width * 0.1,
          //       child: Image.network(
          //           "https://s3-alpha-sig.figma.com/img/6fa5/452d/3146f131b1b08ecfa37e68bee56428e4?Expires=1704067200&Signature=S3t5sm86JGjqREfZuhYq-foaMVhZ3uvDaI7suuGciePasU655Fc6xNL-RGPi6nhlfCaO-ayFvezPw~qzqarD21PD~Vm0N6YmHt7AOn3LVoW4yxa~AIWqlK1QgzPc-1ZQx0-Qy08VVIzKGMfRZZ8bn0xUw785oLNjlwHqjbcIgibl7RvoyXP2HKPLNa8SPaMvwWVVThxxjTwGFrdBAwIj9pEWvj7ISGYR0sFKpAyA0j-zijFraiY3fveI8IQPY0TInXFJDSXrr5jrCPmEFEbSduPRLx0VFflp4zhofC1k0KU0aKzScwHNE53CyMNox6kRLcu7n41F2mwScDE7eSFFdg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
          //     )),
        ],
      ),
    );
  }
}
