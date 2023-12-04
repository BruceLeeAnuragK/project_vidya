import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_vidya/utils/route_utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(height: s.height * 0.16),
            const Text(
              "Log In",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: s.height * 0.04),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Your Email"),
                    ],
                  ),
                  TextField(
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: s.height * 0.01),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Password"),
                    ],
                  ),
                  TextField(
                    onChanged: (val) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                TextButton(
                  onPressed: () {
                    Get.toNamed(MyRoutes.letsGetStartedPage);
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Color(0xff3d5cff),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: s.height * 0.01),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(MyRoutes.loggedInPage);
                },
                child: Container(
                  height: 50,
                  width: 327,
                  decoration: BoxDecoration(
                    color: const Color(0xff3d5cff),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "LOG IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: s.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Get.toNamed(MyRoutes.registerPage);
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xff3d5cff),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: s.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: s.width * 0.3,
                    child: const Divider(height: 10, thickness: 1.0)),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Or login with"),
                ),
                SizedBox(
                  width: s.width * 0.3,
                  child: const Divider(
                    height: 10,
                    thickness: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: s.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
