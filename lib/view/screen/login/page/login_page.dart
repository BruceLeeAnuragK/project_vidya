import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
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
            const Text("Your Email"),
            TextField(
              onChanged: (val) {},
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: s.height * 0.01),
            const Text("Password"),
            TextField(
              onChanged: (val) {},
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SizedBox(), Text("Forgot Password?")],
            ),
            SizedBox(height: s.height * 0.01),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              child: const Text(
                "LOG IN",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: s.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Sign Up"),
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
      backgroundColor: const Color(0xffF3F5F9),
    );
  }
}
