import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_vidya/utils/route_utils.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Select your Category :",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.loginPage, arguments: "Student");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  child: const Text(
                    "Student",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.loginPage, arguments: "Teacher");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  child: const Text(
                    "Teacher",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.loginPage, arguments: "Parents");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  child: const Text(
                    "Parents",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.loginPage, arguments: "Principle");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  child: const Text(
                    "Principle",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.loginPage, arguments: "Tution Teacher");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  child: const Text(
                    "Tution Teacher",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
